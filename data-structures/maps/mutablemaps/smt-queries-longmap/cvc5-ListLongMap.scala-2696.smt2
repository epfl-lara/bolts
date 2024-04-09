; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40002 () Bool)

(assert start!40002)

(declare-fun b_free!10261 () Bool)

(declare-fun b_next!10261 () Bool)

(assert (=> start!40002 (= b_free!10261 (not b_next!10261))))

(declare-fun tp!36311 () Bool)

(declare-fun b_and!18199 () Bool)

(assert (=> start!40002 (= tp!36311 b_and!18199)))

(declare-fun b!435097 () Bool)

(declare-fun e!257071 () Bool)

(declare-fun e!257070 () Bool)

(assert (=> b!435097 (= e!257071 e!257070)))

(declare-fun res!256401 () Bool)

(assert (=> b!435097 (=> (not res!256401) (not e!257070))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!435097 (= res!256401 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!16323 0))(
  ( (V!16324 (val!5751 Int)) )
))
(declare-fun minValue!515 () V!16323)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!7544 0))(
  ( (tuple2!7545 (_1!3782 (_ BitVec 64)) (_2!3782 V!16323)) )
))
(declare-datatypes ((List!7591 0))(
  ( (Nil!7588) (Cons!7587 (h!8443 tuple2!7544) (t!13309 List!7591)) )
))
(declare-datatypes ((ListLongMap!6471 0))(
  ( (ListLongMap!6472 (toList!3251 List!7591)) )
))
(declare-fun lt!200340 () ListLongMap!6471)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16323)

(declare-datatypes ((ValueCell!5363 0))(
  ( (ValueCellFull!5363 (v!7994 V!16323)) (EmptyCell!5363) )
))
(declare-datatypes ((array!26629 0))(
  ( (array!26630 (arr!12761 (Array (_ BitVec 32) ValueCell!5363)) (size!13113 (_ BitVec 32))) )
))
(declare-fun lt!200350 () array!26629)

(declare-datatypes ((array!26631 0))(
  ( (array!26632 (arr!12762 (Array (_ BitVec 32) (_ BitVec 64))) (size!13114 (_ BitVec 32))) )
))
(declare-fun lt!200347 () array!26631)

(declare-fun getCurrentListMapNoExtraKeys!1435 (array!26631 array!26629 (_ BitVec 32) (_ BitVec 32) V!16323 V!16323 (_ BitVec 32) Int) ListLongMap!6471)

(assert (=> b!435097 (= lt!200340 (getCurrentListMapNoExtraKeys!1435 lt!200347 lt!200350 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!26629)

(declare-fun v!412 () V!16323)

(assert (=> b!435097 (= lt!200350 (array!26630 (store (arr!12761 _values!549) i!563 (ValueCellFull!5363 v!412)) (size!13113 _values!549)))))

(declare-fun lt!200342 () ListLongMap!6471)

(declare-fun _keys!709 () array!26631)

(assert (=> b!435097 (= lt!200342 (getCurrentListMapNoExtraKeys!1435 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!435098 () Bool)

(declare-fun e!257073 () Bool)

(declare-fun e!257066 () Bool)

(assert (=> b!435098 (= e!257073 e!257066)))

(declare-fun res!256396 () Bool)

(assert (=> b!435098 (=> res!256396 e!257066)))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!435098 (= res!256396 (= k!794 (select (arr!12762 _keys!709) from!863)))))

(assert (=> b!435098 (not (= (select (arr!12762 _keys!709) from!863) k!794))))

(declare-datatypes ((Unit!12874 0))(
  ( (Unit!12875) )
))
(declare-fun lt!200338 () Unit!12874)

(declare-fun e!257069 () Unit!12874)

(assert (=> b!435098 (= lt!200338 e!257069)))

(declare-fun c!55652 () Bool)

(assert (=> b!435098 (= c!55652 (= (select (arr!12762 _keys!709) from!863) k!794))))

(declare-fun lt!200352 () ListLongMap!6471)

(assert (=> b!435098 (= lt!200340 lt!200352)))

(declare-fun lt!200351 () ListLongMap!6471)

(declare-fun lt!200349 () tuple2!7544)

(declare-fun +!1396 (ListLongMap!6471 tuple2!7544) ListLongMap!6471)

(assert (=> b!435098 (= lt!200352 (+!1396 lt!200351 lt!200349))))

(declare-fun lt!200345 () V!16323)

(assert (=> b!435098 (= lt!200349 (tuple2!7545 (select (arr!12762 _keys!709) from!863) lt!200345))))

(declare-fun get!6367 (ValueCell!5363 V!16323) V!16323)

(declare-fun dynLambda!826 (Int (_ BitVec 64)) V!16323)

(assert (=> b!435098 (= lt!200345 (get!6367 (select (arr!12761 _values!549) from!863) (dynLambda!826 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!435099 () Bool)

(declare-fun Unit!12876 () Unit!12874)

(assert (=> b!435099 (= e!257069 Unit!12876)))

(declare-fun b!435100 () Bool)

(declare-fun res!256405 () Bool)

(declare-fun e!257067 () Bool)

(assert (=> b!435100 (=> (not res!256405) (not e!257067))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26631 (_ BitVec 32)) Bool)

(assert (=> b!435100 (= res!256405 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!435101 () Bool)

(assert (=> b!435101 (= e!257066 true)))

(declare-fun lt!200348 () ListLongMap!6471)

(declare-fun lt!200343 () tuple2!7544)

(assert (=> b!435101 (= lt!200352 (+!1396 (+!1396 lt!200348 lt!200349) lt!200343))))

(declare-fun lt!200346 () Unit!12874)

(declare-fun addCommutativeForDiffKeys!402 (ListLongMap!6471 (_ BitVec 64) V!16323 (_ BitVec 64) V!16323) Unit!12874)

(assert (=> b!435101 (= lt!200346 (addCommutativeForDiffKeys!402 lt!200348 k!794 v!412 (select (arr!12762 _keys!709) from!863) lt!200345))))

(declare-fun res!256397 () Bool)

(assert (=> start!40002 (=> (not res!256397) (not e!257067))))

(assert (=> start!40002 (= res!256397 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13114 _keys!709))))))

(assert (=> start!40002 e!257067))

(declare-fun tp_is_empty!11413 () Bool)

(assert (=> start!40002 tp_is_empty!11413))

(assert (=> start!40002 tp!36311))

(assert (=> start!40002 true))

(declare-fun e!257065 () Bool)

(declare-fun array_inv!9274 (array!26629) Bool)

(assert (=> start!40002 (and (array_inv!9274 _values!549) e!257065)))

(declare-fun array_inv!9275 (array!26631) Bool)

(assert (=> start!40002 (array_inv!9275 _keys!709)))

(declare-fun b!435102 () Bool)

(declare-fun e!257068 () Bool)

(declare-fun mapRes!18741 () Bool)

(assert (=> b!435102 (= e!257065 (and e!257068 mapRes!18741))))

(declare-fun condMapEmpty!18741 () Bool)

(declare-fun mapDefault!18741 () ValueCell!5363)

