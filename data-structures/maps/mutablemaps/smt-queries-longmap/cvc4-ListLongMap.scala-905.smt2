; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20542 () Bool)

(assert start!20542)

(declare-fun b_free!5189 () Bool)

(declare-fun b_next!5189 () Bool)

(assert (=> start!20542 (= b_free!5189 (not b_next!5189))))

(declare-fun tp!18599 () Bool)

(declare-fun b_and!11953 () Bool)

(assert (=> start!20542 (= tp!18599 b_and!11953)))

(declare-fun mapNonEmpty!8636 () Bool)

(declare-fun mapRes!8636 () Bool)

(declare-fun tp!18598 () Bool)

(declare-fun e!133517 () Bool)

(assert (=> mapNonEmpty!8636 (= mapRes!8636 (and tp!18598 e!133517))))

(declare-datatypes ((V!6373 0))(
  ( (V!6374 (val!2567 Int)) )
))
(declare-datatypes ((ValueCell!2179 0))(
  ( (ValueCellFull!2179 (v!4533 V!6373)) (EmptyCell!2179) )
))
(declare-fun mapRest!8636 () (Array (_ BitVec 32) ValueCell!2179))

(declare-fun mapValue!8636 () ValueCell!2179)

(declare-datatypes ((array!9308 0))(
  ( (array!9309 (arr!4404 (Array (_ BitVec 32) ValueCell!2179)) (size!4729 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9308)

(declare-fun mapKey!8636 () (_ BitVec 32))

(assert (=> mapNonEmpty!8636 (= (arr!4404 _values!649) (store mapRest!8636 mapKey!8636 mapValue!8636))))

(declare-fun b!203995 () Bool)

(declare-fun res!98198 () Bool)

(declare-fun e!133514 () Bool)

(assert (=> b!203995 (=> (not res!98198) (not e!133514))))

(declare-datatypes ((array!9310 0))(
  ( (array!9311 (arr!4405 (Array (_ BitVec 32) (_ BitVec 64))) (size!4730 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9310)

(declare-datatypes ((List!2814 0))(
  ( (Nil!2811) (Cons!2810 (h!3452 (_ BitVec 64)) (t!7753 List!2814)) )
))
(declare-fun arrayNoDuplicates!0 (array!9310 (_ BitVec 32) List!2814) Bool)

(assert (=> b!203995 (= res!98198 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2811))))

(declare-fun b!203996 () Bool)

(declare-fun e!133518 () Bool)

(assert (=> b!203996 (= e!133518 true)))

(declare-datatypes ((tuple2!3890 0))(
  ( (tuple2!3891 (_1!1955 (_ BitVec 64)) (_2!1955 V!6373)) )
))
(declare-datatypes ((List!2815 0))(
  ( (Nil!2812) (Cons!2811 (h!3453 tuple2!3890) (t!7754 List!2815)) )
))
(declare-datatypes ((ListLongMap!2817 0))(
  ( (ListLongMap!2818 (toList!1424 List!2815)) )
))
(declare-fun lt!103239 () ListLongMap!2817)

(declare-fun lt!103249 () ListLongMap!2817)

(declare-fun lt!103248 () tuple2!3890)

(declare-fun +!441 (ListLongMap!2817 tuple2!3890) ListLongMap!2817)

(assert (=> b!203996 (= lt!103239 (+!441 lt!103249 lt!103248))))

(declare-fun lt!103238 () ListLongMap!2817)

(declare-fun v!520 () V!6373)

(declare-datatypes ((Unit!6183 0))(
  ( (Unit!6184) )
))
(declare-fun lt!103242 () Unit!6183)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun zeroValue!615 () V!6373)

(declare-fun addCommutativeForDiffKeys!151 (ListLongMap!2817 (_ BitVec 64) V!6373 (_ BitVec 64) V!6373) Unit!6183)

(assert (=> b!203996 (= lt!103242 (addCommutativeForDiffKeys!151 lt!103238 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!203997 () Bool)

(declare-fun res!98206 () Bool)

(assert (=> b!203997 (=> (not res!98206) (not e!133514))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!203997 (= res!98206 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4730 _keys!825))))))

(declare-fun mapIsEmpty!8636 () Bool)

(assert (=> mapIsEmpty!8636 mapRes!8636))

(declare-fun b!203998 () Bool)

(declare-fun res!98200 () Bool)

(assert (=> b!203998 (=> (not res!98200) (not e!133514))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!203998 (= res!98200 (validKeyInArray!0 k!843))))

(declare-fun b!203999 () Bool)

(declare-fun res!98199 () Bool)

(assert (=> b!203999 (=> (not res!98199) (not e!133514))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!203999 (= res!98199 (and (= (size!4729 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4730 _keys!825) (size!4729 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!204000 () Bool)

(declare-fun e!133516 () Bool)

(assert (=> b!204000 (= e!133516 e!133518)))

(declare-fun res!98204 () Bool)

(assert (=> b!204000 (=> res!98204 e!133518)))

(assert (=> b!204000 (= res!98204 (= k!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!103247 () ListLongMap!2817)

(assert (=> b!204000 (= lt!103247 lt!103239)))

(declare-fun lt!103241 () ListLongMap!2817)

(declare-fun lt!103246 () tuple2!3890)

(assert (=> b!204000 (= lt!103239 (+!441 lt!103241 lt!103246))))

(declare-fun lt!103245 () ListLongMap!2817)

(assert (=> b!204000 (= lt!103245 lt!103249)))

(assert (=> b!204000 (= lt!103249 (+!441 lt!103238 lt!103246))))

(declare-fun lt!103243 () ListLongMap!2817)

(assert (=> b!204000 (= lt!103247 (+!441 lt!103243 lt!103246))))

(assert (=> b!204000 (= lt!103246 (tuple2!3891 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!204001 () Bool)

(assert (=> b!204001 (= e!133514 (not e!133516))))

(declare-fun res!98203 () Bool)

(assert (=> b!204001 (=> res!98203 e!133516)))

(assert (=> b!204001 (= res!98203 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6373)

(declare-fun getCurrentListMap!993 (array!9310 array!9308 (_ BitVec 32) (_ BitVec 32) V!6373 V!6373 (_ BitVec 32) Int) ListLongMap!2817)

(assert (=> b!204001 (= lt!103245 (getCurrentListMap!993 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!103240 () array!9308)

(assert (=> b!204001 (= lt!103247 (getCurrentListMap!993 _keys!825 lt!103240 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!204001 (and (= lt!103243 lt!103241) (= lt!103241 lt!103243))))

(assert (=> b!204001 (= lt!103241 (+!441 lt!103238 lt!103248))))

(assert (=> b!204001 (= lt!103248 (tuple2!3891 k!843 v!520))))

(declare-fun lt!103244 () Unit!6183)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!106 (array!9310 array!9308 (_ BitVec 32) (_ BitVec 32) V!6373 V!6373 (_ BitVec 32) (_ BitVec 64) V!6373 (_ BitVec 32) Int) Unit!6183)

(assert (=> b!204001 (= lt!103244 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!106 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!364 (array!9310 array!9308 (_ BitVec 32) (_ BitVec 32) V!6373 V!6373 (_ BitVec 32) Int) ListLongMap!2817)

(assert (=> b!204001 (= lt!103243 (getCurrentListMapNoExtraKeys!364 _keys!825 lt!103240 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!204001 (= lt!103240 (array!9309 (store (arr!4404 _values!649) i!601 (ValueCellFull!2179 v!520)) (size!4729 _values!649)))))

(assert (=> b!204001 (= lt!103238 (getCurrentListMapNoExtraKeys!364 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!204002 () Bool)

(declare-fun e!133513 () Bool)

(declare-fun e!133515 () Bool)

(assert (=> b!204002 (= e!133513 (and e!133515 mapRes!8636))))

(declare-fun condMapEmpty!8636 () Bool)

(declare-fun mapDefault!8636 () ValueCell!2179)

