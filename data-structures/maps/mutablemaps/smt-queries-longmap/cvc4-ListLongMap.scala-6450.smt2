; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82572 () Bool)

(assert start!82572)

(declare-fun b_free!18677 () Bool)

(declare-fun b_next!18677 () Bool)

(assert (=> start!82572 (= b_free!18677 (not b_next!18677))))

(declare-fun tp!65151 () Bool)

(declare-fun b_and!30183 () Bool)

(assert (=> start!82572 (= tp!65151 b_and!30183)))

(declare-fun mapNonEmpty!34213 () Bool)

(declare-fun mapRes!34213 () Bool)

(declare-fun tp!65152 () Bool)

(declare-fun e!542410 () Bool)

(assert (=> mapNonEmpty!34213 (= mapRes!34213 (and tp!65152 e!542410))))

(declare-fun mapKey!34213 () (_ BitVec 32))

(declare-datatypes ((V!33621 0))(
  ( (V!33622 (val!10790 Int)) )
))
(declare-datatypes ((ValueCell!10258 0))(
  ( (ValueCellFull!10258 (v!13348 V!33621)) (EmptyCell!10258) )
))
(declare-datatypes ((array!59043 0))(
  ( (array!59044 (arr!28386 (Array (_ BitVec 32) ValueCell!10258)) (size!28866 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59043)

(declare-fun mapRest!34213 () (Array (_ BitVec 32) ValueCell!10258))

(declare-fun mapValue!34213 () ValueCell!10258)

(assert (=> mapNonEmpty!34213 (= (arr!28386 _values!1400) (store mapRest!34213 mapKey!34213 mapValue!34213))))

(declare-fun b!961775 () Bool)

(declare-fun e!542412 () Bool)

(declare-fun tp_is_empty!21479 () Bool)

(assert (=> b!961775 (= e!542412 tp_is_empty!21479)))

(declare-fun b!961776 () Bool)

(declare-fun res!643756 () Bool)

(declare-fun e!542409 () Bool)

(assert (=> b!961776 (=> (not res!643756) (not e!542409))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((array!59045 0))(
  ( (array!59046 (arr!28387 (Array (_ BitVec 32) (_ BitVec 64))) (size!28867 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59045)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!961776 (= res!643756 (and (= (size!28866 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28867 _keys!1686) (size!28866 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!961777 () Bool)

(declare-fun res!643759 () Bool)

(assert (=> b!961777 (=> (not res!643759) (not e!542409))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59045 (_ BitVec 32)) Bool)

(assert (=> b!961777 (= res!643759 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun mapIsEmpty!34213 () Bool)

(assert (=> mapIsEmpty!34213 mapRes!34213))

(declare-fun res!643760 () Bool)

(assert (=> start!82572 (=> (not res!643760) (not e!542409))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82572 (= res!643760 (validMask!0 mask!2110))))

(assert (=> start!82572 e!542409))

(assert (=> start!82572 true))

(declare-fun e!542413 () Bool)

(declare-fun array_inv!21919 (array!59043) Bool)

(assert (=> start!82572 (and (array_inv!21919 _values!1400) e!542413)))

(declare-fun array_inv!21920 (array!59045) Bool)

(assert (=> start!82572 (array_inv!21920 _keys!1686)))

(assert (=> start!82572 tp!65151))

(assert (=> start!82572 tp_is_empty!21479))

(declare-fun b!961778 () Bool)

(declare-fun res!643755 () Bool)

(assert (=> b!961778 (=> (not res!643755) (not e!542409))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!961778 (= res!643755 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28867 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28867 _keys!1686))))))

(declare-fun b!961779 () Bool)

(assert (=> b!961779 (= e!542410 tp_is_empty!21479)))

(declare-fun b!961780 () Bool)

(declare-fun res!643757 () Bool)

(assert (=> b!961780 (=> (not res!643757) (not e!542409))))

(declare-datatypes ((List!19827 0))(
  ( (Nil!19824) (Cons!19823 (h!20985 (_ BitVec 64)) (t!28198 List!19827)) )
))
(declare-fun arrayNoDuplicates!0 (array!59045 (_ BitVec 32) List!19827) Bool)

(assert (=> b!961780 (= res!643757 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19824))))

(declare-fun b!961781 () Bool)

(assert (=> b!961781 (= e!542413 (and e!542412 mapRes!34213))))

(declare-fun condMapEmpty!34213 () Bool)

(declare-fun mapDefault!34213 () ValueCell!10258)

