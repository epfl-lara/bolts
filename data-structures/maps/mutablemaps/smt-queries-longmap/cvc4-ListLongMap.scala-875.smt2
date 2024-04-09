; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20362 () Bool)

(assert start!20362)

(declare-fun b_free!5009 () Bool)

(declare-fun b_next!5009 () Bool)

(assert (=> start!20362 (= b_free!5009 (not b_next!5009))))

(declare-fun tp!18059 () Bool)

(declare-fun b_and!11773 () Bool)

(assert (=> start!20362 (= tp!18059 b_and!11773)))

(declare-fun b!200746 () Bool)

(declare-fun e!131625 () Bool)

(declare-fun tp_is_empty!4865 () Bool)

(assert (=> b!200746 (= e!131625 tp_is_empty!4865)))

(declare-fun b!200747 () Bool)

(declare-fun e!131628 () Bool)

(declare-fun e!131627 () Bool)

(assert (=> b!200747 (= e!131628 e!131627)))

(declare-fun res!95762 () Bool)

(assert (=> b!200747 (=> res!95762 e!131627)))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!200747 (= res!95762 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!6133 0))(
  ( (V!6134 (val!2477 Int)) )
))
(declare-datatypes ((tuple2!3742 0))(
  ( (tuple2!3743 (_1!1881 (_ BitVec 64)) (_2!1881 V!6133)) )
))
(declare-datatypes ((List!2682 0))(
  ( (Nil!2679) (Cons!2678 (h!3320 tuple2!3742) (t!7621 List!2682)) )
))
(declare-datatypes ((ListLongMap!2669 0))(
  ( (ListLongMap!2670 (toList!1350 List!2682)) )
))
(declare-fun lt!99536 () ListLongMap!2669)

(declare-fun lt!99535 () ListLongMap!2669)

(assert (=> b!200747 (= lt!99536 lt!99535)))

(declare-fun lt!99539 () ListLongMap!2669)

(declare-fun lt!99538 () tuple2!3742)

(declare-fun +!367 (ListLongMap!2669 tuple2!3742) ListLongMap!2669)

(assert (=> b!200747 (= lt!99535 (+!367 lt!99539 lt!99538))))

(declare-fun lt!99541 () ListLongMap!2669)

(declare-datatypes ((Unit!6041 0))(
  ( (Unit!6042) )
))
(declare-fun lt!99532 () Unit!6041)

(declare-fun v!520 () V!6133)

(declare-fun zeroValue!615 () V!6133)

(declare-fun addCommutativeForDiffKeys!88 (ListLongMap!2669 (_ BitVec 64) V!6133 (_ BitVec 64) V!6133) Unit!6041)

(assert (=> b!200747 (= lt!99532 (addCommutativeForDiffKeys!88 lt!99541 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun lt!99540 () ListLongMap!2669)

(declare-fun lt!99531 () tuple2!3742)

(assert (=> b!200747 (= lt!99540 (+!367 lt!99536 lt!99531))))

(declare-fun lt!99529 () ListLongMap!2669)

(declare-fun lt!99528 () tuple2!3742)

(assert (=> b!200747 (= lt!99536 (+!367 lt!99529 lt!99528))))

(declare-fun lt!99526 () ListLongMap!2669)

(declare-fun lt!99533 () ListLongMap!2669)

(assert (=> b!200747 (= lt!99526 lt!99533)))

(assert (=> b!200747 (= lt!99533 (+!367 lt!99539 lt!99531))))

(assert (=> b!200747 (= lt!99539 (+!367 lt!99541 lt!99528))))

(declare-fun lt!99534 () ListLongMap!2669)

(assert (=> b!200747 (= lt!99540 (+!367 (+!367 lt!99534 lt!99528) lt!99531))))

(declare-fun minValue!615 () V!6133)

(assert (=> b!200747 (= lt!99531 (tuple2!3743 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!200747 (= lt!99528 (tuple2!3743 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun mapNonEmpty!8366 () Bool)

(declare-fun mapRes!8366 () Bool)

(declare-fun tp!18058 () Bool)

(assert (=> mapNonEmpty!8366 (= mapRes!8366 (and tp!18058 e!131625))))

(declare-fun mapKey!8366 () (_ BitVec 32))

(declare-datatypes ((ValueCell!2089 0))(
  ( (ValueCellFull!2089 (v!4443 V!6133)) (EmptyCell!2089) )
))
(declare-fun mapValue!8366 () ValueCell!2089)

(declare-datatypes ((array!8960 0))(
  ( (array!8961 (arr!4230 (Array (_ BitVec 32) ValueCell!2089)) (size!4555 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8960)

(declare-fun mapRest!8366 () (Array (_ BitVec 32) ValueCell!2089))

(assert (=> mapNonEmpty!8366 (= (arr!4230 _values!649) (store mapRest!8366 mapKey!8366 mapValue!8366))))

(declare-fun res!95759 () Bool)

(declare-fun e!131624 () Bool)

(assert (=> start!20362 (=> (not res!95759) (not e!131624))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20362 (= res!95759 (validMask!0 mask!1149))))

(assert (=> start!20362 e!131624))

(declare-fun e!131626 () Bool)

(declare-fun array_inv!2773 (array!8960) Bool)

(assert (=> start!20362 (and (array_inv!2773 _values!649) e!131626)))

(assert (=> start!20362 true))

(assert (=> start!20362 tp_is_empty!4865))

(declare-datatypes ((array!8962 0))(
  ( (array!8963 (arr!4231 (Array (_ BitVec 32) (_ BitVec 64))) (size!4556 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8962)

(declare-fun array_inv!2774 (array!8962) Bool)

(assert (=> start!20362 (array_inv!2774 _keys!825)))

(assert (=> start!20362 tp!18059))

(declare-fun b!200748 () Bool)

(declare-fun res!95761 () Bool)

(assert (=> b!200748 (=> (not res!95761) (not e!131624))))

(declare-datatypes ((List!2683 0))(
  ( (Nil!2680) (Cons!2679 (h!3321 (_ BitVec 64)) (t!7622 List!2683)) )
))
(declare-fun arrayNoDuplicates!0 (array!8962 (_ BitVec 32) List!2683) Bool)

(assert (=> b!200748 (= res!95761 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2680))))

(declare-fun b!200749 () Bool)

(declare-fun res!95766 () Bool)

(assert (=> b!200749 (=> (not res!95766) (not e!131624))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8962 (_ BitVec 32)) Bool)

(assert (=> b!200749 (= res!95766 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!200750 () Bool)

(assert (=> b!200750 (= e!131624 (not e!131628))))

(declare-fun res!95763 () Bool)

(assert (=> b!200750 (=> res!95763 e!131628)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!200750 (= res!95763 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!934 (array!8962 array!8960 (_ BitVec 32) (_ BitVec 32) V!6133 V!6133 (_ BitVec 32) Int) ListLongMap!2669)

(assert (=> b!200750 (= lt!99526 (getCurrentListMap!934 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!99530 () array!8960)

(assert (=> b!200750 (= lt!99540 (getCurrentListMap!934 _keys!825 lt!99530 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!200750 (and (= lt!99534 lt!99529) (= lt!99529 lt!99534))))

(assert (=> b!200750 (= lt!99529 (+!367 lt!99541 lt!99538))))

(assert (=> b!200750 (= lt!99538 (tuple2!3743 k!843 v!520))))

(declare-fun lt!99527 () Unit!6041)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!47 (array!8962 array!8960 (_ BitVec 32) (_ BitVec 32) V!6133 V!6133 (_ BitVec 32) (_ BitVec 64) V!6133 (_ BitVec 32) Int) Unit!6041)

(assert (=> b!200750 (= lt!99527 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!47 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!305 (array!8962 array!8960 (_ BitVec 32) (_ BitVec 32) V!6133 V!6133 (_ BitVec 32) Int) ListLongMap!2669)

(assert (=> b!200750 (= lt!99534 (getCurrentListMapNoExtraKeys!305 _keys!825 lt!99530 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!200750 (= lt!99530 (array!8961 (store (arr!4230 _values!649) i!601 (ValueCellFull!2089 v!520)) (size!4555 _values!649)))))

(assert (=> b!200750 (= lt!99541 (getCurrentListMapNoExtraKeys!305 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!200751 () Bool)

(declare-fun res!95767 () Bool)

(assert (=> b!200751 (=> (not res!95767) (not e!131624))))

(assert (=> b!200751 (= res!95767 (and (= (size!4555 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4556 _keys!825) (size!4555 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!200752 () Bool)

(declare-fun res!95764 () Bool)

(assert (=> b!200752 (=> (not res!95764) (not e!131624))))

(assert (=> b!200752 (= res!95764 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4556 _keys!825))))))

(declare-fun b!200753 () Bool)

(declare-fun e!131629 () Bool)

(assert (=> b!200753 (= e!131626 (and e!131629 mapRes!8366))))

(declare-fun condMapEmpty!8366 () Bool)

(declare-fun mapDefault!8366 () ValueCell!2089)

