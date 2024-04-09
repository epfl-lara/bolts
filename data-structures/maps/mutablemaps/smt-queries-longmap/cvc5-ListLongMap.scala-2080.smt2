; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35656 () Bool)

(assert start!35656)

(declare-fun b_free!7903 () Bool)

(declare-fun b_next!7903 () Bool)

(assert (=> start!35656 (= b_free!7903 (not b_next!7903))))

(declare-fun tp!27693 () Bool)

(declare-fun b_and!15163 () Bool)

(assert (=> start!35656 (= tp!27693 b_and!15163)))

(declare-fun b!357732 () Bool)

(declare-fun res!198840 () Bool)

(declare-fun e!218998 () Bool)

(assert (=> b!357732 (=> (not res!198840) (not e!218998))))

(declare-datatypes ((array!19735 0))(
  ( (array!19736 (arr!9358 (Array (_ BitVec 32) (_ BitVec 64))) (size!9710 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19735)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19735 (_ BitVec 32)) Bool)

(assert (=> b!357732 (= res!198840 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!357733 () Bool)

(declare-fun e!219000 () Bool)

(assert (=> b!357733 (= e!219000 true)))

(declare-datatypes ((V!11779 0))(
  ( (V!11780 (val!4095 Int)) )
))
(declare-fun minValue!1150 () V!11779)

(declare-fun defaultEntry!1216 () Int)

(declare-fun k!1077 () (_ BitVec 64))

(declare-datatypes ((ValueCell!3707 0))(
  ( (ValueCellFull!3707 (v!6285 V!11779)) (EmptyCell!3707) )
))
(declare-datatypes ((array!19737 0))(
  ( (array!19738 (arr!9359 (Array (_ BitVec 32) ValueCell!3707)) (size!9711 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19737)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11779)

(declare-datatypes ((tuple2!5716 0))(
  ( (tuple2!5717 (_1!2868 (_ BitVec 64)) (_2!2868 V!11779)) )
))
(declare-datatypes ((List!5430 0))(
  ( (Nil!5427) (Cons!5426 (h!6282 tuple2!5716) (t!10588 List!5430)) )
))
(declare-datatypes ((ListLongMap!4643 0))(
  ( (ListLongMap!4644 (toList!2337 List!5430)) )
))
(declare-fun contains!2413 (ListLongMap!4643 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1854 (array!19735 array!19737 (_ BitVec 32) (_ BitVec 32) V!11779 V!11779 (_ BitVec 32) Int) ListLongMap!4643)

(assert (=> b!357733 (contains!2413 (getCurrentListMap!1854 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) k!1077)))

(declare-datatypes ((Unit!11033 0))(
  ( (Unit!11034) )
))
(declare-fun lt!166084 () Unit!11033)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun lemmaArrayContainsKeyThenInListMap!347 (array!19735 array!19737 (_ BitVec 32) (_ BitVec 32) V!11779 V!11779 (_ BitVec 64) (_ BitVec 32) Int) Unit!11033)

(assert (=> b!357733 (= lt!166084 (lemmaArrayContainsKeyThenInListMap!347 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 (bvadd #b00000000000000000000000000000001 from!1805) defaultEntry!1216))))

(declare-fun mapIsEmpty!13659 () Bool)

(declare-fun mapRes!13659 () Bool)

(assert (=> mapIsEmpty!13659 mapRes!13659))

(declare-fun mapNonEmpty!13659 () Bool)

(declare-fun tp!27692 () Bool)

(declare-fun e!219002 () Bool)

(assert (=> mapNonEmpty!13659 (= mapRes!13659 (and tp!27692 e!219002))))

(declare-fun mapKey!13659 () (_ BitVec 32))

(declare-fun mapRest!13659 () (Array (_ BitVec 32) ValueCell!3707))

(declare-fun mapValue!13659 () ValueCell!3707)

(assert (=> mapNonEmpty!13659 (= (arr!9359 _values!1208) (store mapRest!13659 mapKey!13659 mapValue!13659))))

(declare-fun b!357734 () Bool)

(declare-fun res!198844 () Bool)

(assert (=> b!357734 (=> (not res!198844) (not e!218998))))

(declare-datatypes ((List!5431 0))(
  ( (Nil!5428) (Cons!5427 (h!6283 (_ BitVec 64)) (t!10589 List!5431)) )
))
(declare-fun arrayNoDuplicates!0 (array!19735 (_ BitVec 32) List!5431) Bool)

(assert (=> b!357734 (= res!198844 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5428))))

(declare-fun b!357735 () Bool)

(declare-fun res!198847 () Bool)

(assert (=> b!357735 (=> (not res!198847) (not e!218998))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!357735 (= res!198847 (validKeyInArray!0 k!1077))))

(declare-fun b!357737 () Bool)

(declare-fun e!218999 () Bool)

(declare-fun tp_is_empty!8101 () Bool)

(assert (=> b!357737 (= e!218999 tp_is_empty!8101)))

(declare-fun b!357738 () Bool)

(assert (=> b!357738 (= e!219002 tp_is_empty!8101)))

(declare-fun b!357739 () Bool)

(declare-fun res!198841 () Bool)

(assert (=> b!357739 (=> (not res!198841) (not e!218998))))

(assert (=> b!357739 (= res!198841 (not (= (select (arr!9358 _keys!1456) from!1805) k!1077)))))

(declare-fun b!357740 () Bool)

(assert (=> b!357740 (= e!218998 (not e!219000))))

(declare-fun res!198845 () Bool)

(assert (=> b!357740 (=> res!198845 e!219000)))

(assert (=> b!357740 (= res!198845 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1805) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1805) (size!9710 _keys!1456))))))

(declare-fun arrayContainsKey!0 (array!19735 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!357740 (arrayContainsKey!0 _keys!1456 k!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun lt!166083 () Unit!11033)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!35 (array!19735 array!19737 (_ BitVec 32) (_ BitVec 32) V!11779 V!11779 (_ BitVec 64) (_ BitVec 32)) Unit!11033)

(assert (=> b!357740 (= lt!166083 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!35 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 from!1805))))

(declare-fun b!357741 () Bool)

(declare-fun res!198846 () Bool)

(assert (=> b!357741 (=> (not res!198846) (not e!218998))))

(assert (=> b!357741 (= res!198846 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9710 _keys!1456))))))

(declare-fun b!357742 () Bool)

(declare-fun e!219001 () Bool)

(assert (=> b!357742 (= e!219001 (and e!218999 mapRes!13659))))

(declare-fun condMapEmpty!13659 () Bool)

(declare-fun mapDefault!13659 () ValueCell!3707)

