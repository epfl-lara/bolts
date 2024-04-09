; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40800 () Bool)

(assert start!40800)

(declare-fun b_free!10781 () Bool)

(declare-fun b_next!10781 () Bool)

(assert (=> start!40800 (= b_free!10781 (not b_next!10781))))

(declare-fun tp!38165 () Bool)

(declare-fun b_and!18867 () Bool)

(assert (=> start!40800 (= tp!38165 b_and!18867)))

(declare-fun b!452217 () Bool)

(declare-fun res!269430 () Bool)

(declare-fun e!264790 () Bool)

(assert (=> b!452217 (=> (not res!269430) (not e!264790))))

(declare-datatypes ((array!28007 0))(
  ( (array!28008 (arr!13445 (Array (_ BitVec 32) (_ BitVec 64))) (size!13797 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28007)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!452217 (= res!269430 (or (= (select (arr!13445 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13445 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!452218 () Bool)

(declare-fun e!264791 () Bool)

(assert (=> b!452218 (= e!264791 true)))

(declare-datatypes ((V!17263 0))(
  ( (V!17264 (val!6104 Int)) )
))
(declare-datatypes ((tuple2!7980 0))(
  ( (tuple2!7981 (_1!4000 (_ BitVec 64)) (_2!4000 V!17263)) )
))
(declare-datatypes ((List!8083 0))(
  ( (Nil!8080) (Cons!8079 (h!8935 tuple2!7980) (t!13895 List!8083)) )
))
(declare-datatypes ((ListLongMap!6907 0))(
  ( (ListLongMap!6908 (toList!3469 List!8083)) )
))
(declare-fun lt!205189 () ListLongMap!6907)

(declare-fun lt!205190 () V!17263)

(declare-fun lt!205188 () tuple2!7980)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun +!1535 (ListLongMap!6907 tuple2!7980) ListLongMap!6907)

(assert (=> b!452218 (= (+!1535 lt!205189 lt!205188) (+!1535 (+!1535 lt!205189 (tuple2!7981 k!794 lt!205190)) lt!205188))))

(declare-fun lt!205185 () V!17263)

(assert (=> b!452218 (= lt!205188 (tuple2!7981 k!794 lt!205185))))

(declare-datatypes ((Unit!13173 0))(
  ( (Unit!13174) )
))
(declare-fun lt!205193 () Unit!13173)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!81 (ListLongMap!6907 (_ BitVec 64) V!17263 V!17263) Unit!13173)

(assert (=> b!452218 (= lt!205193 (addSameAsAddTwiceSameKeyDiffValues!81 lt!205189 k!794 lt!205190 lt!205185))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!205186 () V!17263)

(declare-datatypes ((ValueCell!5716 0))(
  ( (ValueCellFull!5716 (v!8359 V!17263)) (EmptyCell!5716) )
))
(declare-datatypes ((array!28009 0))(
  ( (array!28010 (arr!13446 (Array (_ BitVec 32) ValueCell!5716)) (size!13798 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28009)

(declare-fun get!6636 (ValueCell!5716 V!17263) V!17263)

(assert (=> b!452218 (= lt!205190 (get!6636 (select (arr!13446 _values!549) from!863) lt!205186))))

(declare-fun lt!205192 () ListLongMap!6907)

(declare-fun lt!205184 () array!28007)

(assert (=> b!452218 (= lt!205192 (+!1535 lt!205189 (tuple2!7981 (select (arr!13445 lt!205184) from!863) lt!205185)))))

(declare-fun v!412 () V!17263)

(assert (=> b!452218 (= lt!205185 (get!6636 (select (store (arr!13446 _values!549) i!563 (ValueCellFull!5716 v!412)) from!863) lt!205186))))

(declare-fun defaultEntry!557 () Int)

(declare-fun dynLambda!859 (Int (_ BitVec 64)) V!17263)

(assert (=> b!452218 (= lt!205186 (dynLambda!859 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun minValue!515 () V!17263)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17263)

(declare-fun lt!205194 () array!28009)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1646 (array!28007 array!28009 (_ BitVec 32) (_ BitVec 32) V!17263 V!17263 (_ BitVec 32) Int) ListLongMap!6907)

(assert (=> b!452218 (= lt!205189 (getCurrentListMapNoExtraKeys!1646 lt!205184 lt!205194 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452219 () Bool)

(declare-fun e!264795 () Bool)

(declare-fun call!29953 () ListLongMap!6907)

(declare-fun call!29954 () ListLongMap!6907)

(assert (=> b!452219 (= e!264795 (= call!29953 call!29954))))

(declare-fun b!452220 () Bool)

(declare-fun res!269420 () Bool)

(assert (=> b!452220 (=> (not res!269420) (not e!264790))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!452220 (= res!269420 (validKeyInArray!0 k!794))))

(declare-fun b!452221 () Bool)

(declare-fun res!269427 () Bool)

(declare-fun e!264793 () Bool)

(assert (=> b!452221 (=> (not res!269427) (not e!264793))))

(declare-datatypes ((List!8084 0))(
  ( (Nil!8081) (Cons!8080 (h!8936 (_ BitVec 64)) (t!13896 List!8084)) )
))
(declare-fun arrayNoDuplicates!0 (array!28007 (_ BitVec 32) List!8084) Bool)

(assert (=> b!452221 (= res!269427 (arrayNoDuplicates!0 lt!205184 #b00000000000000000000000000000000 Nil!8081))))

(declare-fun b!452222 () Bool)

(declare-fun e!264792 () Bool)

(declare-fun tp_is_empty!12119 () Bool)

(assert (=> b!452222 (= e!264792 tp_is_empty!12119)))

(declare-fun bm!29950 () Bool)

(declare-fun c!56045 () Bool)

(assert (=> bm!29950 (= call!29953 (getCurrentListMapNoExtraKeys!1646 (ite c!56045 _keys!709 lt!205184) (ite c!56045 _values!549 lt!205194) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452223 () Bool)

(declare-fun res!269422 () Bool)

(assert (=> b!452223 (=> (not res!269422) (not e!264790))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28007 (_ BitVec 32)) Bool)

(assert (=> b!452223 (= res!269422 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun bm!29951 () Bool)

(assert (=> bm!29951 (= call!29954 (getCurrentListMapNoExtraKeys!1646 (ite c!56045 lt!205184 _keys!709) (ite c!56045 lt!205194 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452224 () Bool)

(declare-fun res!269423 () Bool)

(assert (=> b!452224 (=> (not res!269423) (not e!264790))))

(declare-fun arrayContainsKey!0 (array!28007 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!452224 (= res!269423 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!452225 () Bool)

(declare-fun e!264797 () Bool)

(assert (=> b!452225 (= e!264797 (not e!264791))))

(declare-fun res!269432 () Bool)

(assert (=> b!452225 (=> res!269432 e!264791)))

(assert (=> b!452225 (= res!269432 (validKeyInArray!0 (select (arr!13445 _keys!709) from!863)))))

(assert (=> b!452225 e!264795))

(assert (=> b!452225 (= c!56045 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!205191 () Unit!13173)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!704 (array!28007 array!28009 (_ BitVec 32) (_ BitVec 32) V!17263 V!17263 (_ BitVec 32) (_ BitVec 64) V!17263 (_ BitVec 32) Int) Unit!13173)

(assert (=> b!452225 (= lt!205191 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!704 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452226 () Bool)

(declare-fun e!264796 () Bool)

(assert (=> b!452226 (= e!264796 tp_is_empty!12119)))

(declare-fun mapIsEmpty!19815 () Bool)

(declare-fun mapRes!19815 () Bool)

(assert (=> mapIsEmpty!19815 mapRes!19815))

(declare-fun b!452227 () Bool)

(declare-fun e!264798 () Bool)

(assert (=> b!452227 (= e!264798 (and e!264796 mapRes!19815))))

(declare-fun condMapEmpty!19815 () Bool)

(declare-fun mapDefault!19815 () ValueCell!5716)

