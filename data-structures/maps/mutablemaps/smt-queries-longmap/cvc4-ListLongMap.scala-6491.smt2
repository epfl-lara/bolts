; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82818 () Bool)

(assert start!82818)

(declare-fun b!965548 () Bool)

(declare-fun res!646424 () Bool)

(declare-fun e!544337 () Bool)

(assert (=> b!965548 (=> (not res!646424) (not e!544337))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33949 0))(
  ( (V!33950 (val!10913 Int)) )
))
(declare-datatypes ((ValueCell!10381 0))(
  ( (ValueCellFull!10381 (v!13471 V!33949)) (EmptyCell!10381) )
))
(declare-datatypes ((array!59515 0))(
  ( (array!59516 (arr!28622 (Array (_ BitVec 32) ValueCell!10381)) (size!29102 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59515)

(declare-datatypes ((array!59517 0))(
  ( (array!59518 (arr!28623 (Array (_ BitVec 32) (_ BitVec 64))) (size!29103 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59517)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!965548 (= res!646424 (and (= (size!29102 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29103 _keys!1686) (size!29102 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!965549 () Bool)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!965549 (= e!544337 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29103 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29103 _keys!1686)) (bvslt i!803 #b00000000000000000000000000000000)))))

(declare-fun b!965550 () Bool)

(declare-fun res!646423 () Bool)

(assert (=> b!965550 (=> (not res!646423) (not e!544337))))

(declare-datatypes ((List!19991 0))(
  ( (Nil!19988) (Cons!19987 (h!21149 (_ BitVec 64)) (t!28362 List!19991)) )
))
(declare-fun arrayNoDuplicates!0 (array!59517 (_ BitVec 32) List!19991) Bool)

(assert (=> b!965550 (= res!646423 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19988))))

(declare-fun mapIsEmpty!34582 () Bool)

(declare-fun mapRes!34582 () Bool)

(assert (=> mapIsEmpty!34582 mapRes!34582))

(declare-fun b!965552 () Bool)

(declare-fun res!646422 () Bool)

(assert (=> b!965552 (=> (not res!646422) (not e!544337))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59517 (_ BitVec 32)) Bool)

(assert (=> b!965552 (= res!646422 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun mapNonEmpty!34582 () Bool)

(declare-fun tp!65881 () Bool)

(declare-fun e!544338 () Bool)

(assert (=> mapNonEmpty!34582 (= mapRes!34582 (and tp!65881 e!544338))))

(declare-fun mapRest!34582 () (Array (_ BitVec 32) ValueCell!10381))

(declare-fun mapKey!34582 () (_ BitVec 32))

(declare-fun mapValue!34582 () ValueCell!10381)

(assert (=> mapNonEmpty!34582 (= (arr!28622 _values!1400) (store mapRest!34582 mapKey!34582 mapValue!34582))))

(declare-fun res!646421 () Bool)

(assert (=> start!82818 (=> (not res!646421) (not e!544337))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82818 (= res!646421 (validMask!0 mask!2110))))

(assert (=> start!82818 e!544337))

(assert (=> start!82818 true))

(declare-fun e!544339 () Bool)

(declare-fun array_inv!22073 (array!59515) Bool)

(assert (=> start!82818 (and (array_inv!22073 _values!1400) e!544339)))

(declare-fun array_inv!22074 (array!59517) Bool)

(assert (=> start!82818 (array_inv!22074 _keys!1686)))

(declare-fun b!965551 () Bool)

(declare-fun e!544336 () Bool)

(declare-fun tp_is_empty!21725 () Bool)

(assert (=> b!965551 (= e!544336 tp_is_empty!21725)))

(declare-fun b!965553 () Bool)

(assert (=> b!965553 (= e!544339 (and e!544336 mapRes!34582))))

(declare-fun condMapEmpty!34582 () Bool)

(declare-fun mapDefault!34582 () ValueCell!10381)

