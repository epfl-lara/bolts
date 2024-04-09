; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35906 () Bool)

(assert start!35906)

(declare-fun b_free!7927 () Bool)

(declare-fun b_next!7927 () Bool)

(assert (=> start!35906 (= b_free!7927 (not b_next!7927))))

(declare-fun tp!28082 () Bool)

(declare-fun b_and!15187 () Bool)

(assert (=> start!35906 (= tp!28082 b_and!15187)))

(declare-fun b!360718 () Bool)

(declare-fun res!200757 () Bool)

(declare-fun e!220814 () Bool)

(assert (=> b!360718 (=> (not res!200757) (not e!220814))))

(declare-datatypes ((array!20193 0))(
  ( (array!20194 (arr!9586 (Array (_ BitVec 32) (_ BitVec 64))) (size!9938 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20193)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k!1077 () (_ BitVec 64))

(assert (=> b!360718 (= res!200757 (not (= (select (arr!9586 _keys!1456) from!1805) k!1077)))))

(declare-fun b!360719 () Bool)

(declare-fun res!200755 () Bool)

(assert (=> b!360719 (=> (not res!200755) (not e!220814))))

(declare-fun arrayContainsKey!0 (array!20193 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!360719 (= res!200755 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!360720 () Bool)

(declare-fun res!200752 () Bool)

(assert (=> b!360720 (=> (not res!200752) (not e!220814))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20193 (_ BitVec 32)) Bool)

(assert (=> b!360720 (= res!200752 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!360721 () Bool)

(declare-fun res!200754 () Bool)

(assert (=> b!360721 (=> (not res!200754) (not e!220814))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!360721 (= res!200754 (validKeyInArray!0 k!1077))))

(declare-fun b!360722 () Bool)

(declare-fun e!220819 () Bool)

(assert (=> b!360722 (= e!220814 (not e!220819))))

(declare-fun res!200760 () Bool)

(assert (=> b!360722 (=> res!200760 e!220819)))

(assert (=> b!360722 (= res!200760 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1805) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1805) (size!9938 _keys!1456))))))

(assert (=> b!360722 (arrayContainsKey!0 _keys!1456 k!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-datatypes ((V!12091 0))(
  ( (V!12092 (val!4212 Int)) )
))
(declare-fun minValue!1150 () V!12091)

(declare-datatypes ((Unit!11093 0))(
  ( (Unit!11094) )
))
(declare-fun lt!166465 () Unit!11093)

(declare-datatypes ((ValueCell!3824 0))(
  ( (ValueCellFull!3824 (v!6402 V!12091)) (EmptyCell!3824) )
))
(declare-datatypes ((array!20195 0))(
  ( (array!20196 (arr!9587 (Array (_ BitVec 32) ValueCell!3824)) (size!9939 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20195)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!12091)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!63 (array!20193 array!20195 (_ BitVec 32) (_ BitVec 32) V!12091 V!12091 (_ BitVec 64) (_ BitVec 32)) Unit!11093)

(assert (=> b!360722 (= lt!166465 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!63 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 from!1805))))

(declare-fun b!360724 () Bool)

(declare-fun res!200758 () Bool)

(assert (=> b!360724 (=> (not res!200758) (not e!220814))))

(assert (=> b!360724 (= res!200758 (and (= (size!9939 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9938 _keys!1456) (size!9939 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!360725 () Bool)

(assert (=> b!360725 (= e!220819 true)))

(declare-fun defaultEntry!1216 () Int)

(declare-datatypes ((tuple2!5734 0))(
  ( (tuple2!5735 (_1!2877 (_ BitVec 64)) (_2!2877 V!12091)) )
))
(declare-datatypes ((List!5524 0))(
  ( (Nil!5521) (Cons!5520 (h!6376 tuple2!5734) (t!10682 List!5524)) )
))
(declare-datatypes ((ListLongMap!4661 0))(
  ( (ListLongMap!4662 (toList!2346 List!5524)) )
))
(declare-fun contains!2423 (ListLongMap!4661 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1863 (array!20193 array!20195 (_ BitVec 32) (_ BitVec 32) V!12091 V!12091 (_ BitVec 32) Int) ListLongMap!4661)

(assert (=> b!360725 (contains!2423 (getCurrentListMap!1863 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) k!1077)))

(declare-fun lt!166464 () Unit!11093)

(declare-fun lemmaArrayContainsKeyThenInListMap!355 (array!20193 array!20195 (_ BitVec 32) (_ BitVec 32) V!12091 V!12091 (_ BitVec 64) (_ BitVec 32) Int) Unit!11093)

(assert (=> b!360725 (= lt!166464 (lemmaArrayContainsKeyThenInListMap!355 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 (bvadd #b00000000000000000000000000000001 from!1805) defaultEntry!1216))))

(declare-fun mapIsEmpty!14013 () Bool)

(declare-fun mapRes!14013 () Bool)

(assert (=> mapIsEmpty!14013 mapRes!14013))

(declare-fun b!360726 () Bool)

(declare-fun e!220817 () Bool)

(declare-fun tp_is_empty!8335 () Bool)

(assert (=> b!360726 (= e!220817 tp_is_empty!8335)))

(declare-fun b!360727 () Bool)

(declare-fun res!200753 () Bool)

(assert (=> b!360727 (=> (not res!200753) (not e!220814))))

(declare-datatypes ((List!5525 0))(
  ( (Nil!5522) (Cons!5521 (h!6377 (_ BitVec 64)) (t!10683 List!5525)) )
))
(declare-fun arrayNoDuplicates!0 (array!20193 (_ BitVec 32) List!5525) Bool)

(assert (=> b!360727 (= res!200753 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5522))))

(declare-fun b!360728 () Bool)

(declare-fun res!200759 () Bool)

(assert (=> b!360728 (=> (not res!200759) (not e!220814))))

(assert (=> b!360728 (= res!200759 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9938 _keys!1456))))))

(declare-fun b!360729 () Bool)

(declare-fun e!220816 () Bool)

(assert (=> b!360729 (= e!220816 tp_is_empty!8335)))

(declare-fun mapNonEmpty!14013 () Bool)

(declare-fun tp!28083 () Bool)

(assert (=> mapNonEmpty!14013 (= mapRes!14013 (and tp!28083 e!220817))))

(declare-fun mapValue!14013 () ValueCell!3824)

(declare-fun mapRest!14013 () (Array (_ BitVec 32) ValueCell!3824))

(declare-fun mapKey!14013 () (_ BitVec 32))

(assert (=> mapNonEmpty!14013 (= (arr!9587 _values!1208) (store mapRest!14013 mapKey!14013 mapValue!14013))))

(declare-fun res!200756 () Bool)

(assert (=> start!35906 (=> (not res!200756) (not e!220814))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35906 (= res!200756 (validMask!0 mask!1842))))

(assert (=> start!35906 e!220814))

(assert (=> start!35906 tp_is_empty!8335))

(assert (=> start!35906 true))

(assert (=> start!35906 tp!28082))

(declare-fun array_inv!7050 (array!20193) Bool)

(assert (=> start!35906 (array_inv!7050 _keys!1456)))

(declare-fun e!220818 () Bool)

(declare-fun array_inv!7051 (array!20195) Bool)

(assert (=> start!35906 (and (array_inv!7051 _values!1208) e!220818)))

(declare-fun b!360723 () Bool)

(assert (=> b!360723 (= e!220818 (and e!220816 mapRes!14013))))

(declare-fun condMapEmpty!14013 () Bool)

(declare-fun mapDefault!14013 () ValueCell!3824)

