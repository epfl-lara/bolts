; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21060 () Bool)

(assert start!21060)

(declare-fun b_free!5579 () Bool)

(declare-fun b_next!5579 () Bool)

(assert (=> start!21060 (= b_free!5579 (not b_next!5579))))

(declare-fun tp!19796 () Bool)

(declare-fun b_and!12415 () Bool)

(assert (=> start!21060 (= tp!19796 b_and!12415)))

(declare-fun b!211596 () Bool)

(declare-fun e!137738 () Bool)

(declare-fun tp_is_empty!5441 () Bool)

(assert (=> b!211596 (= e!137738 tp_is_empty!5441)))

(declare-fun b!211597 () Bool)

(declare-fun res!103374 () Bool)

(declare-fun e!137735 () Bool)

(assert (=> b!211597 (=> (not res!103374) (not e!137735))))

(declare-datatypes ((array!10082 0))(
  ( (array!10083 (arr!4785 (Array (_ BitVec 32) (_ BitVec 64))) (size!5110 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10082)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6901 0))(
  ( (V!6902 (val!2765 Int)) )
))
(declare-datatypes ((ValueCell!2377 0))(
  ( (ValueCellFull!2377 (v!4755 V!6901)) (EmptyCell!2377) )
))
(declare-datatypes ((array!10084 0))(
  ( (array!10085 (arr!4786 (Array (_ BitVec 32) ValueCell!2377)) (size!5111 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10084)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!211597 (= res!103374 (and (= (size!5111 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5110 _keys!825) (size!5111 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!211598 () Bool)

(declare-fun res!103376 () Bool)

(assert (=> b!211598 (=> (not res!103376) (not e!137735))))

(declare-datatypes ((List!3092 0))(
  ( (Nil!3089) (Cons!3088 (h!3730 (_ BitVec 64)) (t!8043 List!3092)) )
))
(declare-fun arrayNoDuplicates!0 (array!10082 (_ BitVec 32) List!3092) Bool)

(assert (=> b!211598 (= res!103376 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3089))))

(declare-fun b!211599 () Bool)

(declare-fun res!103370 () Bool)

(assert (=> b!211599 (=> (not res!103370) (not e!137735))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10082 (_ BitVec 32)) Bool)

(assert (=> b!211599 (= res!103370 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!211600 () Bool)

(declare-fun res!103369 () Bool)

(assert (=> b!211600 (=> (not res!103369) (not e!137735))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!211600 (= res!103369 (validKeyInArray!0 k!843))))

(declare-fun res!103372 () Bool)

(assert (=> start!21060 (=> (not res!103372) (not e!137735))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!21060 (= res!103372 (validMask!0 mask!1149))))

(assert (=> start!21060 e!137735))

(declare-fun e!137736 () Bool)

(declare-fun array_inv!3157 (array!10084) Bool)

(assert (=> start!21060 (and (array_inv!3157 _values!649) e!137736)))

(assert (=> start!21060 true))

(assert (=> start!21060 tp_is_empty!5441))

(declare-fun array_inv!3158 (array!10082) Bool)

(assert (=> start!21060 (array_inv!3158 _keys!825)))

(assert (=> start!21060 tp!19796))

(declare-fun mapIsEmpty!9248 () Bool)

(declare-fun mapRes!9248 () Bool)

(assert (=> mapIsEmpty!9248 mapRes!9248))

(declare-fun b!211601 () Bool)

(declare-fun e!137737 () Bool)

(assert (=> b!211601 (= e!137735 (not e!137737))))

(declare-fun res!103375 () Bool)

(assert (=> b!211601 (=> res!103375 e!137737)))

(assert (=> b!211601 (= res!103375 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!4178 0))(
  ( (tuple2!4179 (_1!2099 (_ BitVec 64)) (_2!2099 V!6901)) )
))
(declare-datatypes ((List!3093 0))(
  ( (Nil!3090) (Cons!3089 (h!3731 tuple2!4178) (t!8044 List!3093)) )
))
(declare-datatypes ((ListLongMap!3105 0))(
  ( (ListLongMap!3106 (toList!1568 List!3093)) )
))
(declare-fun lt!108895 () ListLongMap!3105)

(declare-fun zeroValue!615 () V!6901)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6901)

(declare-fun getCurrentListMap!1096 (array!10082 array!10084 (_ BitVec 32) (_ BitVec 32) V!6901 V!6901 (_ BitVec 32) Int) ListLongMap!3105)

(assert (=> b!211601 (= lt!108895 (getCurrentListMap!1096 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108894 () array!10084)

(declare-fun lt!108893 () ListLongMap!3105)

(assert (=> b!211601 (= lt!108893 (getCurrentListMap!1096 _keys!825 lt!108894 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108892 () ListLongMap!3105)

(declare-fun lt!108896 () ListLongMap!3105)

(assert (=> b!211601 (and (= lt!108892 lt!108896) (= lt!108896 lt!108892))))

(declare-fun lt!108891 () ListLongMap!3105)

(declare-fun v!520 () V!6901)

(declare-fun +!561 (ListLongMap!3105 tuple2!4178) ListLongMap!3105)

(assert (=> b!211601 (= lt!108896 (+!561 lt!108891 (tuple2!4179 k!843 v!520)))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((Unit!6421 0))(
  ( (Unit!6422) )
))
(declare-fun lt!108890 () Unit!6421)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!213 (array!10082 array!10084 (_ BitVec 32) (_ BitVec 32) V!6901 V!6901 (_ BitVec 32) (_ BitVec 64) V!6901 (_ BitVec 32) Int) Unit!6421)

(assert (=> b!211601 (= lt!108890 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!213 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!495 (array!10082 array!10084 (_ BitVec 32) (_ BitVec 32) V!6901 V!6901 (_ BitVec 32) Int) ListLongMap!3105)

(assert (=> b!211601 (= lt!108892 (getCurrentListMapNoExtraKeys!495 _keys!825 lt!108894 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!211601 (= lt!108894 (array!10085 (store (arr!4786 _values!649) i!601 (ValueCellFull!2377 v!520)) (size!5111 _values!649)))))

(assert (=> b!211601 (= lt!108891 (getCurrentListMapNoExtraKeys!495 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!211602 () Bool)

(declare-fun lt!108889 () tuple2!4178)

(declare-fun e!137733 () Bool)

(assert (=> b!211602 (= e!137733 (= lt!108895 (+!561 lt!108891 lt!108889)))))

(declare-fun b!211603 () Bool)

(declare-fun res!103371 () Bool)

(assert (=> b!211603 (=> (not res!103371) (not e!137735))))

(assert (=> b!211603 (= res!103371 (= (select (arr!4785 _keys!825) i!601) k!843))))

(declare-fun b!211604 () Bool)

(assert (=> b!211604 (= e!137737 (= lt!108893 (+!561 lt!108896 lt!108889)))))

(assert (=> b!211604 e!137733))

(declare-fun res!103373 () Bool)

(assert (=> b!211604 (=> (not res!103373) (not e!137733))))

(assert (=> b!211604 (= res!103373 (= lt!108893 (+!561 lt!108892 lt!108889)))))

(assert (=> b!211604 (= lt!108889 (tuple2!4179 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!211605 () Bool)

(declare-fun e!137732 () Bool)

(assert (=> b!211605 (= e!137736 (and e!137732 mapRes!9248))))

(declare-fun condMapEmpty!9248 () Bool)

(declare-fun mapDefault!9248 () ValueCell!2377)

