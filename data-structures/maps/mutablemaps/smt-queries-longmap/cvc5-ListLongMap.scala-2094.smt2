; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35740 () Bool)

(assert start!35740)

(declare-fun b!358684 () Bool)

(declare-fun res!199420 () Bool)

(declare-fun e!219652 () Bool)

(assert (=> b!358684 (=> (not res!199420) (not e!219652))))

(declare-datatypes ((array!19895 0))(
  ( (array!19896 (arr!9438 (Array (_ BitVec 32) (_ BitVec 64))) (size!9790 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19895)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!19895 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!358684 (= res!199420 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun mapNonEmpty!13785 () Bool)

(declare-fun mapRes!13785 () Bool)

(declare-fun tp!27843 () Bool)

(declare-fun e!219655 () Bool)

(assert (=> mapNonEmpty!13785 (= mapRes!13785 (and tp!27843 e!219655))))

(declare-datatypes ((V!11891 0))(
  ( (V!11892 (val!4137 Int)) )
))
(declare-datatypes ((ValueCell!3749 0))(
  ( (ValueCellFull!3749 (v!6327 V!11891)) (EmptyCell!3749) )
))
(declare-fun mapValue!13785 () ValueCell!3749)

(declare-fun mapRest!13785 () (Array (_ BitVec 32) ValueCell!3749))

(declare-fun mapKey!13785 () (_ BitVec 32))

(declare-datatypes ((array!19897 0))(
  ( (array!19898 (arr!9439 (Array (_ BitVec 32) ValueCell!3749)) (size!9791 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19897)

(assert (=> mapNonEmpty!13785 (= (arr!9439 _values!1208) (store mapRest!13785 mapKey!13785 mapValue!13785))))

(declare-fun b!358685 () Bool)

(declare-fun res!199417 () Bool)

(assert (=> b!358685 (=> (not res!199417) (not e!219652))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(assert (=> b!358685 (= res!199417 (and (= (size!9791 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9790 _keys!1456) (size!9791 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!358686 () Bool)

(declare-fun res!199413 () Bool)

(assert (=> b!358686 (=> (not res!199413) (not e!219652))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19895 (_ BitVec 32)) Bool)

(assert (=> b!358686 (= res!199413 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!358687 () Bool)

(declare-fun res!199418 () Bool)

(assert (=> b!358687 (=> (not res!199418) (not e!219652))))

(assert (=> b!358687 (= res!199418 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9790 _keys!1456))))))

(declare-fun b!358688 () Bool)

(declare-fun tp_is_empty!8185 () Bool)

(assert (=> b!358688 (= e!219655 tp_is_empty!8185)))

(declare-fun res!199419 () Bool)

(assert (=> start!35740 (=> (not res!199419) (not e!219652))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35740 (= res!199419 (validMask!0 mask!1842))))

(assert (=> start!35740 e!219652))

(assert (=> start!35740 true))

(declare-fun array_inv!6942 (array!19895) Bool)

(assert (=> start!35740 (array_inv!6942 _keys!1456)))

(declare-fun e!219656 () Bool)

(declare-fun array_inv!6943 (array!19897) Bool)

(assert (=> start!35740 (and (array_inv!6943 _values!1208) e!219656)))

(declare-fun b!358689 () Bool)

(declare-fun res!199414 () Bool)

(assert (=> b!358689 (=> (not res!199414) (not e!219652))))

(declare-datatypes ((List!5470 0))(
  ( (Nil!5467) (Cons!5466 (h!6322 (_ BitVec 64)) (t!10628 List!5470)) )
))
(declare-fun arrayNoDuplicates!0 (array!19895 (_ BitVec 32) List!5470) Bool)

(assert (=> b!358689 (= res!199414 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5467))))

(declare-fun mapIsEmpty!13785 () Bool)

(assert (=> mapIsEmpty!13785 mapRes!13785))

(declare-fun b!358690 () Bool)

(declare-fun res!199415 () Bool)

(assert (=> b!358690 (=> (not res!199415) (not e!219652))))

(assert (=> b!358690 (= res!199415 (= (select (arr!9438 _keys!1456) from!1805) k!1077))))

(declare-fun b!358691 () Bool)

(declare-fun e!219653 () Bool)

(assert (=> b!358691 (= e!219656 (and e!219653 mapRes!13785))))

(declare-fun condMapEmpty!13785 () Bool)

(declare-fun mapDefault!13785 () ValueCell!3749)

