; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107114 () Bool)

(assert start!107114)

(declare-fun b_free!27583 () Bool)

(declare-fun b_next!27583 () Bool)

(assert (=> start!107114 (= b_free!27583 (not b_next!27583))))

(declare-fun tp!96977 () Bool)

(declare-fun b_and!45625 () Bool)

(assert (=> start!107114 (= tp!96977 b_and!45625)))

(declare-fun mapIsEmpty!50731 () Bool)

(declare-fun mapRes!50731 () Bool)

(assert (=> mapIsEmpty!50731 mapRes!50731))

(declare-fun b!1269433 () Bool)

(declare-fun e!723560 () Bool)

(declare-fun tp_is_empty!32767 () Bool)

(assert (=> b!1269433 (= e!723560 tp_is_empty!32767)))

(declare-fun b!1269434 () Bool)

(declare-fun res!844884 () Bool)

(declare-fun e!723559 () Bool)

(assert (=> b!1269434 (=> (not res!844884) (not e!723559))))

(declare-datatypes ((V!48883 0))(
  ( (V!48884 (val!16458 Int)) )
))
(declare-datatypes ((ValueCell!15530 0))(
  ( (ValueCellFull!15530 (v!19093 V!48883)) (EmptyCell!15530) )
))
(declare-datatypes ((array!82769 0))(
  ( (array!82770 (arr!39917 (Array (_ BitVec 32) ValueCell!15530)) (size!40454 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82769)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82771 0))(
  ( (array!82772 (arr!39918 (Array (_ BitVec 32) (_ BitVec 64))) (size!40455 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82771)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1269434 (= res!844884 (and (= (size!40454 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40455 _keys!1364) (size!40454 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!50731 () Bool)

(declare-fun tp!96976 () Bool)

(assert (=> mapNonEmpty!50731 (= mapRes!50731 (and tp!96976 e!723560))))

(declare-fun mapKey!50731 () (_ BitVec 32))

(declare-fun mapRest!50731 () (Array (_ BitVec 32) ValueCell!15530))

(declare-fun mapValue!50731 () ValueCell!15530)

(assert (=> mapNonEmpty!50731 (= (arr!39917 _values!1134) (store mapRest!50731 mapKey!50731 mapValue!50731))))

(declare-fun b!1269435 () Bool)

(declare-fun e!723561 () Bool)

(assert (=> b!1269435 (= e!723561 tp_is_empty!32767)))

(declare-fun b!1269437 () Bool)

(assert (=> b!1269437 (= e!723559 (not true))))

(declare-fun from!1698 () (_ BitVec 32))

(declare-fun minValueAfter!52 () V!48883)

(declare-fun minValueBefore!52 () V!48883)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48883)

(declare-fun zeroValueBefore!52 () V!48883)

(declare-datatypes ((tuple2!21468 0))(
  ( (tuple2!21469 (_1!10744 (_ BitVec 64)) (_2!10744 V!48883)) )
))
(declare-datatypes ((List!28605 0))(
  ( (Nil!28602) (Cons!28601 (h!29810 tuple2!21468) (t!42141 List!28605)) )
))
(declare-datatypes ((ListLongMap!19209 0))(
  ( (ListLongMap!19210 (toList!9620 List!28605)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5928 (array!82771 array!82769 (_ BitVec 32) (_ BitVec 32) V!48883 V!48883 (_ BitVec 32) Int) ListLongMap!19209)

(assert (=> b!1269437 (= (getCurrentListMapNoExtraKeys!5928 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5928 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42212 0))(
  ( (Unit!42213) )
))
(declare-fun lt!574523 () Unit!42212)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1224 (array!82771 array!82769 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48883 V!48883 V!48883 V!48883 (_ BitVec 32) Int) Unit!42212)

(assert (=> b!1269437 (= lt!574523 (lemmaNoChangeToArrayThenSameMapNoExtras!1224 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun b!1269438 () Bool)

(declare-fun res!844883 () Bool)

(assert (=> b!1269438 (=> (not res!844883) (not e!723559))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82771 (_ BitVec 32)) Bool)

(assert (=> b!1269438 (= res!844883 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun res!844885 () Bool)

(assert (=> start!107114 (=> (not res!844885) (not e!723559))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107114 (= res!844885 (validMask!0 mask!1730))))

(assert (=> start!107114 e!723559))

(declare-fun e!723562 () Bool)

(declare-fun array_inv!30331 (array!82769) Bool)

(assert (=> start!107114 (and (array_inv!30331 _values!1134) e!723562)))

(assert (=> start!107114 true))

(declare-fun array_inv!30332 (array!82771) Bool)

(assert (=> start!107114 (array_inv!30332 _keys!1364)))

(assert (=> start!107114 tp_is_empty!32767))

(assert (=> start!107114 tp!96977))

(declare-fun b!1269436 () Bool)

(assert (=> b!1269436 (= e!723562 (and e!723561 mapRes!50731))))

(declare-fun condMapEmpty!50731 () Bool)

(declare-fun mapDefault!50731 () ValueCell!15530)

