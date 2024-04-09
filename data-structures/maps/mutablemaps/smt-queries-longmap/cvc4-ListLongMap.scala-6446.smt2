; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82548 () Bool)

(assert start!82548)

(declare-fun res!643597 () Bool)

(declare-fun e!542229 () Bool)

(assert (=> start!82548 (=> (not res!643597) (not e!542229))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82548 (= res!643597 (validMask!0 mask!2110))))

(assert (=> start!82548 e!542229))

(assert (=> start!82548 true))

(declare-datatypes ((V!33589 0))(
  ( (V!33590 (val!10778 Int)) )
))
(declare-datatypes ((ValueCell!10246 0))(
  ( (ValueCellFull!10246 (v!13336 V!33589)) (EmptyCell!10246) )
))
(declare-datatypes ((array!59001 0))(
  ( (array!59002 (arr!28365 (Array (_ BitVec 32) ValueCell!10246)) (size!28845 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59001)

(declare-fun e!542233 () Bool)

(declare-fun array_inv!21907 (array!59001) Bool)

(assert (=> start!82548 (and (array_inv!21907 _values!1400) e!542233)))

(declare-datatypes ((array!59003 0))(
  ( (array!59004 (arr!28366 (Array (_ BitVec 32) (_ BitVec 64))) (size!28846 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59003)

(declare-fun array_inv!21908 (array!59003) Bool)

(assert (=> start!82548 (array_inv!21908 _keys!1686)))

(declare-fun b!961508 () Bool)

(declare-fun res!643596 () Bool)

(assert (=> b!961508 (=> (not res!643596) (not e!542229))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59003 (_ BitVec 32)) Bool)

(assert (=> b!961508 (= res!643596 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!961509 () Bool)

(declare-fun e!542232 () Bool)

(declare-fun tp_is_empty!21455 () Bool)

(assert (=> b!961509 (= e!542232 tp_is_empty!21455)))

(declare-fun b!961510 () Bool)

(assert (=> b!961510 (= e!542229 false)))

(declare-fun lt!430737 () Bool)

(declare-datatypes ((List!19817 0))(
  ( (Nil!19814) (Cons!19813 (h!20975 (_ BitVec 64)) (t!28188 List!19817)) )
))
(declare-fun arrayNoDuplicates!0 (array!59003 (_ BitVec 32) List!19817) Bool)

(assert (=> b!961510 (= lt!430737 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19814))))

(declare-fun b!961511 () Bool)

(declare-fun res!643598 () Bool)

(assert (=> b!961511 (=> (not res!643598) (not e!542229))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!961511 (= res!643598 (and (= (size!28845 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28846 _keys!1686) (size!28845 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!34177 () Bool)

(declare-fun mapRes!34177 () Bool)

(assert (=> mapIsEmpty!34177 mapRes!34177))

(declare-fun mapNonEmpty!34177 () Bool)

(declare-fun tp!65107 () Bool)

(declare-fun e!542231 () Bool)

(assert (=> mapNonEmpty!34177 (= mapRes!34177 (and tp!65107 e!542231))))

(declare-fun mapRest!34177 () (Array (_ BitVec 32) ValueCell!10246))

(declare-fun mapKey!34177 () (_ BitVec 32))

(declare-fun mapValue!34177 () ValueCell!10246)

(assert (=> mapNonEmpty!34177 (= (arr!28365 _values!1400) (store mapRest!34177 mapKey!34177 mapValue!34177))))

(declare-fun b!961512 () Bool)

(assert (=> b!961512 (= e!542233 (and e!542232 mapRes!34177))))

(declare-fun condMapEmpty!34177 () Bool)

(declare-fun mapDefault!34177 () ValueCell!10246)

