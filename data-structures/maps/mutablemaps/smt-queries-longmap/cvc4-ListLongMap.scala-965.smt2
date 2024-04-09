; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20942 () Bool)

(assert start!20942)

(declare-fun b_free!5543 () Bool)

(declare-fun b_next!5543 () Bool)

(assert (=> start!20942 (= b_free!5543 (not b_next!5543))))

(declare-fun tp!19675 () Bool)

(declare-fun b_and!12331 () Bool)

(assert (=> start!20942 (= tp!19675 b_and!12331)))

(declare-fun b!210206 () Bool)

(declare-fun res!102574 () Bool)

(declare-fun e!136902 () Bool)

(assert (=> b!210206 (=> (not res!102574) (not e!136902))))

(declare-datatypes ((V!6853 0))(
  ( (V!6854 (val!2747 Int)) )
))
(declare-datatypes ((tuple2!4150 0))(
  ( (tuple2!4151 (_1!2085 (_ BitVec 64)) (_2!2085 V!6853)) )
))
(declare-fun lt!107656 () tuple2!4150)

(declare-fun lt!107657 () tuple2!4150)

(declare-datatypes ((List!3067 0))(
  ( (Nil!3064) (Cons!3063 (h!3705 tuple2!4150) (t!8010 List!3067)) )
))
(declare-datatypes ((ListLongMap!3077 0))(
  ( (ListLongMap!3078 (toList!1554 List!3067)) )
))
(declare-fun lt!107655 () ListLongMap!3077)

(declare-fun lt!107650 () ListLongMap!3077)

(declare-fun +!547 (ListLongMap!3077 tuple2!4150) ListLongMap!3077)

(assert (=> b!210206 (= res!102574 (= lt!107655 (+!547 (+!547 lt!107650 lt!107657) lt!107656)))))

(declare-fun b!210207 () Bool)

(declare-fun res!102575 () Bool)

(declare-fun e!136906 () Bool)

(assert (=> b!210207 (=> (not res!102575) (not e!136906))))

(declare-datatypes ((array!10008 0))(
  ( (array!10009 (arr!4752 (Array (_ BitVec 32) (_ BitVec 64))) (size!5077 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10008)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10008 (_ BitVec 32)) Bool)

(assert (=> b!210207 (= res!102575 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!210208 () Bool)

(declare-fun res!102582 () Bool)

(assert (=> b!210208 (=> (not res!102582) (not e!136906))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((ValueCell!2359 0))(
  ( (ValueCellFull!2359 (v!4721 V!6853)) (EmptyCell!2359) )
))
(declare-datatypes ((array!10010 0))(
  ( (array!10011 (arr!4753 (Array (_ BitVec 32) ValueCell!2359)) (size!5078 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10010)

(assert (=> b!210208 (= res!102582 (and (= (size!5078 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5077 _keys!825) (size!5078 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!210209 () Bool)

(declare-fun res!102580 () Bool)

(assert (=> b!210209 (=> (not res!102580) (not e!136906))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!210209 (= res!102580 (= (select (arr!4752 _keys!825) i!601) k!843))))

(declare-fun b!210210 () Bool)

(declare-fun e!136905 () Bool)

(assert (=> b!210210 (= e!136906 (not e!136905))))

(declare-fun res!102579 () Bool)

(assert (=> b!210210 (=> res!102579 e!136905)))

(assert (=> b!210210 (= res!102579 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun zeroValue!615 () V!6853)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6853)

(declare-fun getCurrentListMap!1085 (array!10008 array!10010 (_ BitVec 32) (_ BitVec 32) V!6853 V!6853 (_ BitVec 32) Int) ListLongMap!3077)

(assert (=> b!210210 (= lt!107655 (getCurrentListMap!1085 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107652 () ListLongMap!3077)

(declare-fun lt!107649 () array!10010)

(assert (=> b!210210 (= lt!107652 (getCurrentListMap!1085 _keys!825 lt!107649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107653 () ListLongMap!3077)

(declare-fun lt!107654 () ListLongMap!3077)

(assert (=> b!210210 (and (= lt!107653 lt!107654) (= lt!107654 lt!107653))))

(declare-fun v!520 () V!6853)

(assert (=> b!210210 (= lt!107654 (+!547 lt!107650 (tuple2!4151 k!843 v!520)))))

(declare-datatypes ((Unit!6387 0))(
  ( (Unit!6388) )
))
(declare-fun lt!107651 () Unit!6387)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!202 (array!10008 array!10010 (_ BitVec 32) (_ BitVec 32) V!6853 V!6853 (_ BitVec 32) (_ BitVec 64) V!6853 (_ BitVec 32) Int) Unit!6387)

(assert (=> b!210210 (= lt!107651 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!202 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!484 (array!10008 array!10010 (_ BitVec 32) (_ BitVec 32) V!6853 V!6853 (_ BitVec 32) Int) ListLongMap!3077)

(assert (=> b!210210 (= lt!107653 (getCurrentListMapNoExtraKeys!484 _keys!825 lt!107649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!210210 (= lt!107649 (array!10011 (store (arr!4753 _values!649) i!601 (ValueCellFull!2359 v!520)) (size!5078 _values!649)))))

(assert (=> b!210210 (= lt!107650 (getCurrentListMapNoExtraKeys!484 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!210211 () Bool)

(declare-fun e!136903 () Bool)

(declare-fun e!136907 () Bool)

(declare-fun mapRes!9182 () Bool)

(assert (=> b!210211 (= e!136903 (and e!136907 mapRes!9182))))

(declare-fun condMapEmpty!9182 () Bool)

(declare-fun mapDefault!9182 () ValueCell!2359)

