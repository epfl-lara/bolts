; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21062 () Bool)

(assert start!21062)

(declare-fun b_free!5581 () Bool)

(declare-fun b_next!5581 () Bool)

(assert (=> start!21062 (= b_free!5581 (not b_next!5581))))

(declare-fun tp!19801 () Bool)

(declare-fun b_and!12417 () Bool)

(assert (=> start!21062 (= tp!19801 b_and!12417)))

(declare-fun res!103402 () Bool)

(declare-fun e!137754 () Bool)

(assert (=> start!21062 (=> (not res!103402) (not e!137754))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!21062 (= res!103402 (validMask!0 mask!1149))))

(assert (=> start!21062 e!137754))

(declare-datatypes ((V!6905 0))(
  ( (V!6906 (val!2766 Int)) )
))
(declare-datatypes ((ValueCell!2378 0))(
  ( (ValueCellFull!2378 (v!4756 V!6905)) (EmptyCell!2378) )
))
(declare-datatypes ((array!10086 0))(
  ( (array!10087 (arr!4787 (Array (_ BitVec 32) ValueCell!2378)) (size!5112 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10086)

(declare-fun e!137758 () Bool)

(declare-fun array_inv!3159 (array!10086) Bool)

(assert (=> start!21062 (and (array_inv!3159 _values!649) e!137758)))

(assert (=> start!21062 true))

(declare-fun tp_is_empty!5443 () Bool)

(assert (=> start!21062 tp_is_empty!5443))

(declare-datatypes ((array!10088 0))(
  ( (array!10089 (arr!4788 (Array (_ BitVec 32) (_ BitVec 64))) (size!5113 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10088)

(declare-fun array_inv!3160 (array!10088) Bool)

(assert (=> start!21062 (array_inv!3160 _keys!825)))

(assert (=> start!21062 tp!19801))

(declare-fun b!211634 () Bool)

(declare-fun res!103407 () Bool)

(assert (=> b!211634 (=> (not res!103407) (not e!137754))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!211634 (= res!103407 (and (= (size!5112 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5113 _keys!825) (size!5112 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-datatypes ((tuple2!4180 0))(
  ( (tuple2!4181 (_1!2100 (_ BitVec 64)) (_2!2100 V!6905)) )
))
(declare-datatypes ((List!3094 0))(
  ( (Nil!3091) (Cons!3090 (h!3732 tuple2!4180) (t!8045 List!3094)) )
))
(declare-datatypes ((ListLongMap!3107 0))(
  ( (ListLongMap!3108 (toList!1569 List!3094)) )
))
(declare-fun lt!108915 () ListLongMap!3107)

(declare-fun lt!108917 () tuple2!4180)

(declare-fun lt!108919 () ListLongMap!3107)

(declare-fun b!211635 () Bool)

(declare-fun e!137753 () Bool)

(declare-fun +!562 (ListLongMap!3107 tuple2!4180) ListLongMap!3107)

(assert (=> b!211635 (= e!137753 (= lt!108915 (+!562 lt!108919 lt!108917)))))

(declare-fun b!211636 () Bool)

(declare-fun e!137759 () Bool)

(assert (=> b!211636 (= e!137759 tp_is_empty!5443)))

(declare-fun b!211637 () Bool)

(declare-fun e!137755 () Bool)

(assert (=> b!211637 (= e!137755 tp_is_empty!5443)))

(declare-fun b!211638 () Bool)

(declare-fun res!103399 () Bool)

(assert (=> b!211638 (=> (not res!103399) (not e!137754))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!211638 (= res!103399 (= (select (arr!4788 _keys!825) i!601) k!843))))

(declare-fun mapIsEmpty!9251 () Bool)

(declare-fun mapRes!9251 () Bool)

(assert (=> mapIsEmpty!9251 mapRes!9251))

(declare-fun b!211639 () Bool)

(declare-fun res!103404 () Bool)

(assert (=> b!211639 (=> (not res!103404) (not e!137754))))

(declare-datatypes ((List!3095 0))(
  ( (Nil!3092) (Cons!3091 (h!3733 (_ BitVec 64)) (t!8046 List!3095)) )
))
(declare-fun arrayNoDuplicates!0 (array!10088 (_ BitVec 32) List!3095) Bool)

(assert (=> b!211639 (= res!103404 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3092))))

(declare-fun b!211640 () Bool)

(declare-fun e!137757 () Bool)

(assert (=> b!211640 (= e!137757 (not (= k!843 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!211640 e!137753))

(declare-fun res!103400 () Bool)

(assert (=> b!211640 (=> (not res!103400) (not e!137753))))

(declare-fun lt!108918 () ListLongMap!3107)

(assert (=> b!211640 (= res!103400 (= lt!108915 (+!562 lt!108918 lt!108917)))))

(declare-fun zeroValue!615 () V!6905)

(assert (=> b!211640 (= lt!108917 (tuple2!4181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!211641 () Bool)

(assert (=> b!211641 (= e!137754 (not e!137757))))

(declare-fun res!103405 () Bool)

(assert (=> b!211641 (=> res!103405 e!137757)))

(assert (=> b!211641 (= res!103405 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6905)

(declare-fun lt!108920 () ListLongMap!3107)

(declare-fun getCurrentListMap!1097 (array!10088 array!10086 (_ BitVec 32) (_ BitVec 32) V!6905 V!6905 (_ BitVec 32) Int) ListLongMap!3107)

(assert (=> b!211641 (= lt!108920 (getCurrentListMap!1097 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108913 () array!10086)

(assert (=> b!211641 (= lt!108915 (getCurrentListMap!1097 _keys!825 lt!108913 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!211641 (and (= lt!108918 lt!108919) (= lt!108919 lt!108918))))

(declare-fun lt!108914 () ListLongMap!3107)

(declare-fun v!520 () V!6905)

(assert (=> b!211641 (= lt!108919 (+!562 lt!108914 (tuple2!4181 k!843 v!520)))))

(declare-datatypes ((Unit!6423 0))(
  ( (Unit!6424) )
))
(declare-fun lt!108916 () Unit!6423)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!214 (array!10088 array!10086 (_ BitVec 32) (_ BitVec 32) V!6905 V!6905 (_ BitVec 32) (_ BitVec 64) V!6905 (_ BitVec 32) Int) Unit!6423)

(assert (=> b!211641 (= lt!108916 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!214 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!496 (array!10088 array!10086 (_ BitVec 32) (_ BitVec 32) V!6905 V!6905 (_ BitVec 32) Int) ListLongMap!3107)

(assert (=> b!211641 (= lt!108918 (getCurrentListMapNoExtraKeys!496 _keys!825 lt!108913 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!211641 (= lt!108913 (array!10087 (store (arr!4787 _values!649) i!601 (ValueCellFull!2378 v!520)) (size!5112 _values!649)))))

(assert (=> b!211641 (= lt!108914 (getCurrentListMapNoExtraKeys!496 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!211642 () Bool)

(declare-fun res!103398 () Bool)

(assert (=> b!211642 (=> (not res!103398) (not e!137754))))

(assert (=> b!211642 (= res!103398 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5113 _keys!825))))))

(declare-fun b!211643 () Bool)

(declare-fun res!103403 () Bool)

(assert (=> b!211643 (=> (not res!103403) (not e!137754))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!211643 (= res!103403 (validKeyInArray!0 k!843))))

(declare-fun b!211644 () Bool)

(declare-fun res!103401 () Bool)

(assert (=> b!211644 (=> (not res!103401) (not e!137753))))

(assert (=> b!211644 (= res!103401 (= lt!108920 (+!562 lt!108914 lt!108917)))))

(declare-fun mapNonEmpty!9251 () Bool)

(declare-fun tp!19802 () Bool)

(assert (=> mapNonEmpty!9251 (= mapRes!9251 (and tp!19802 e!137759))))

(declare-fun mapKey!9251 () (_ BitVec 32))

(declare-fun mapValue!9251 () ValueCell!2378)

(declare-fun mapRest!9251 () (Array (_ BitVec 32) ValueCell!2378))

(assert (=> mapNonEmpty!9251 (= (arr!4787 _values!649) (store mapRest!9251 mapKey!9251 mapValue!9251))))

(declare-fun b!211645 () Bool)

(declare-fun res!103406 () Bool)

(assert (=> b!211645 (=> (not res!103406) (not e!137754))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10088 (_ BitVec 32)) Bool)

(assert (=> b!211645 (= res!103406 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!211646 () Bool)

(assert (=> b!211646 (= e!137758 (and e!137755 mapRes!9251))))

(declare-fun condMapEmpty!9251 () Bool)

(declare-fun mapDefault!9251 () ValueCell!2378)

