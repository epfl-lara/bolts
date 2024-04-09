; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106182 () Bool)

(assert start!106182)

(declare-fun b_free!27521 () Bool)

(declare-fun b_next!27521 () Bool)

(assert (=> start!106182 (= b_free!27521 (not b_next!27521))))

(declare-fun tp!96123 () Bool)

(declare-fun b_and!45539 () Bool)

(assert (=> start!106182 (= tp!96123 b_and!45539)))

(declare-fun b!1263745 () Bool)

(declare-fun res!841793 () Bool)

(declare-fun e!719567 () Bool)

(assert (=> b!1263745 (=> (not res!841793) (not e!719567))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((V!48595 0))(
  ( (V!48596 (val!16274 Int)) )
))
(declare-datatypes ((ValueCell!15448 0))(
  ( (ValueCellFull!15448 (v!18986 V!48595)) (EmptyCell!15448) )
))
(declare-datatypes ((array!82455 0))(
  ( (array!82456 (arr!39767 (Array (_ BitVec 32) ValueCell!15448)) (size!40304 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82455)

(declare-datatypes ((array!82457 0))(
  ( (array!82458 (arr!39768 (Array (_ BitVec 32) (_ BitVec 64))) (size!40305 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82457)

(assert (=> b!1263745 (= res!841793 (and (= (size!40304 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40305 _keys!1118) (size!40304 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!922 () Int)

(declare-fun e!719564 () Bool)

(declare-fun minValueBefore!43 () V!48595)

(declare-datatypes ((tuple2!21216 0))(
  ( (tuple2!21217 (_1!10618 (_ BitVec 64)) (_2!10618 V!48595)) )
))
(declare-datatypes ((List!28434 0))(
  ( (Nil!28431) (Cons!28430 (h!29639 tuple2!21216) (t!41958 List!28434)) )
))
(declare-datatypes ((ListLongMap!19101 0))(
  ( (ListLongMap!19102 (toList!9566 List!28434)) )
))
(declare-fun lt!573196 () ListLongMap!19101)

(declare-fun zeroValue!871 () V!48595)

(declare-fun b!1263746 () Bool)

(declare-fun getCurrentListMap!4669 (array!82457 array!82455 (_ BitVec 32) (_ BitVec 32) V!48595 V!48595 (_ BitVec 32) Int) ListLongMap!19101)

(declare-fun +!4231 (ListLongMap!19101 tuple2!21216) ListLongMap!19101)

(assert (=> b!1263746 (= e!719564 (= (getCurrentListMap!4669 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) (+!4231 (+!4231 lt!573196 (tuple2!21217 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871)) (tuple2!21217 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun mapIsEmpty!50464 () Bool)

(declare-fun mapRes!50464 () Bool)

(assert (=> mapIsEmpty!50464 mapRes!50464))

(declare-fun b!1263747 () Bool)

(declare-fun res!841789 () Bool)

(assert (=> b!1263747 (=> (not res!841789) (not e!719567))))

(declare-datatypes ((List!28435 0))(
  ( (Nil!28432) (Cons!28431 (h!29640 (_ BitVec 64)) (t!41959 List!28435)) )
))
(declare-fun arrayNoDuplicates!0 (array!82457 (_ BitVec 32) List!28435) Bool)

(assert (=> b!1263747 (= res!841789 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28432))))

(declare-fun b!1263748 () Bool)

(declare-fun e!719563 () Bool)

(declare-fun tp_is_empty!32423 () Bool)

(assert (=> b!1263748 (= e!719563 tp_is_empty!32423)))

(declare-fun b!1263749 () Bool)

(declare-fun e!719568 () Bool)

(assert (=> b!1263749 (= e!719567 (not e!719568))))

(declare-fun res!841794 () Bool)

(assert (=> b!1263749 (=> res!841794 e!719568)))

(assert (=> b!1263749 (= res!841794 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!719569 () Bool)

(assert (=> b!1263749 e!719569))

(declare-fun res!841788 () Bool)

(assert (=> b!1263749 (=> (not res!841788) (not e!719569))))

(declare-fun lt!573197 () ListLongMap!19101)

(assert (=> b!1263749 (= res!841788 (= lt!573196 lt!573197))))

(declare-fun minValueAfter!43 () V!48595)

(declare-datatypes ((Unit!42074 0))(
  ( (Unit!42075) )
))
(declare-fun lt!573198 () Unit!42074)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1201 (array!82457 array!82455 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48595 V!48595 V!48595 V!48595 (_ BitVec 32) Int) Unit!42074)

(assert (=> b!1263749 (= lt!573198 (lemmaNoChangeToArrayThenSameMapNoExtras!1201 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5905 (array!82457 array!82455 (_ BitVec 32) (_ BitVec 32) V!48595 V!48595 (_ BitVec 32) Int) ListLongMap!19101)

(assert (=> b!1263749 (= lt!573197 (getCurrentListMapNoExtraKeys!5905 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1263749 (= lt!573196 (getCurrentListMapNoExtraKeys!5905 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!50464 () Bool)

(declare-fun tp!96122 () Bool)

(assert (=> mapNonEmpty!50464 (= mapRes!50464 (and tp!96122 e!719563))))

(declare-fun mapKey!50464 () (_ BitVec 32))

(declare-fun mapRest!50464 () (Array (_ BitVec 32) ValueCell!15448))

(declare-fun mapValue!50464 () ValueCell!15448)

(assert (=> mapNonEmpty!50464 (= (arr!39767 _values!914) (store mapRest!50464 mapKey!50464 mapValue!50464))))

(declare-fun b!1263750 () Bool)

(declare-fun e!719566 () Bool)

(assert (=> b!1263750 (= e!719566 tp_is_empty!32423)))

(declare-fun b!1263751 () Bool)

(declare-fun e!719570 () Bool)

(assert (=> b!1263751 (= e!719570 (and e!719566 mapRes!50464))))

(declare-fun condMapEmpty!50464 () Bool)

(declare-fun mapDefault!50464 () ValueCell!15448)

