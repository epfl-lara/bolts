; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39366 () Bool)

(assert start!39366)

(declare-fun b_free!9625 () Bool)

(declare-fun b_next!9625 () Bool)

(assert (=> start!39366 (= b_free!9625 (not b_next!9625))))

(declare-fun tp!34403 () Bool)

(declare-fun b_and!17143 () Bool)

(assert (=> start!39366 (= tp!34403 b_and!17143)))

(declare-fun b!417530 () Bool)

(declare-fun e!249083 () Bool)

(declare-fun e!249085 () Bool)

(assert (=> b!417530 (= e!249083 e!249085)))

(declare-fun res!243270 () Bool)

(assert (=> b!417530 (=> (not res!243270) (not e!249085))))

(declare-datatypes ((array!25389 0))(
  ( (array!25390 (arr!12141 (Array (_ BitVec 32) (_ BitVec 64))) (size!12493 (_ BitVec 32))) )
))
(declare-fun lt!191355 () array!25389)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25389 (_ BitVec 32)) Bool)

(assert (=> b!417530 (= res!243270 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!191355 mask!1025))))

(declare-fun _keys!709 () array!25389)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!417530 (= lt!191355 (array!25390 (store (arr!12141 _keys!709) i!563 k!794) (size!12493 _keys!709)))))

(declare-fun b!417531 () Bool)

(declare-fun e!249080 () Bool)

(declare-datatypes ((V!15475 0))(
  ( (V!15476 (val!5433 Int)) )
))
(declare-datatypes ((tuple2!7024 0))(
  ( (tuple2!7025 (_1!3522 (_ BitVec 64)) (_2!3522 V!15475)) )
))
(declare-datatypes ((List!7076 0))(
  ( (Nil!7073) (Cons!7072 (h!7928 tuple2!7024) (t!12374 List!7076)) )
))
(declare-datatypes ((ListLongMap!5951 0))(
  ( (ListLongMap!5952 (toList!2991 List!7076)) )
))
(declare-fun call!29050 () ListLongMap!5951)

(declare-fun call!29051 () ListLongMap!5951)

(assert (=> b!417531 (= e!249080 (= call!29050 call!29051))))

(declare-fun b!417532 () Bool)

(declare-fun res!243273 () Bool)

(assert (=> b!417532 (=> (not res!243273) (not e!249083))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!417532 (= res!243273 (validKeyInArray!0 k!794))))

(declare-fun minValue!515 () V!15475)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5045 0))(
  ( (ValueCellFull!5045 (v!7676 V!15475)) (EmptyCell!5045) )
))
(declare-datatypes ((array!25391 0))(
  ( (array!25392 (arr!12142 (Array (_ BitVec 32) ValueCell!5045)) (size!12494 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25391)

(declare-fun lt!191358 () array!25391)

(declare-fun zeroValue!515 () V!15475)

(declare-fun c!55076 () Bool)

(declare-fun bm!29047 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1194 (array!25389 array!25391 (_ BitVec 32) (_ BitVec 32) V!15475 V!15475 (_ BitVec 32) Int) ListLongMap!5951)

(assert (=> bm!29047 (= call!29050 (getCurrentListMapNoExtraKeys!1194 (ite c!55076 _keys!709 lt!191355) (ite c!55076 _values!549 lt!191358) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417533 () Bool)

(declare-fun res!243276 () Bool)

(assert (=> b!417533 (=> (not res!243276) (not e!249083))))

(declare-datatypes ((List!7077 0))(
  ( (Nil!7074) (Cons!7073 (h!7929 (_ BitVec 64)) (t!12375 List!7077)) )
))
(declare-fun arrayNoDuplicates!0 (array!25389 (_ BitVec 32) List!7077) Bool)

(assert (=> b!417533 (= res!243276 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7074))))

(declare-fun b!417534 () Bool)

(declare-fun res!243272 () Bool)

(assert (=> b!417534 (=> (not res!243272) (not e!249083))))

(declare-fun arrayContainsKey!0 (array!25389 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!417534 (= res!243272 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!17787 () Bool)

(declare-fun mapRes!17787 () Bool)

(assert (=> mapIsEmpty!17787 mapRes!17787))

(declare-fun b!417535 () Bool)

(declare-fun res!243263 () Bool)

(assert (=> b!417535 (=> (not res!243263) (not e!249083))))

(assert (=> b!417535 (= res!243263 (and (= (size!12494 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12493 _keys!709) (size!12494 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!417536 () Bool)

(declare-fun v!412 () V!15475)

(declare-fun +!1202 (ListLongMap!5951 tuple2!7024) ListLongMap!5951)

(assert (=> b!417536 (= e!249080 (= call!29051 (+!1202 call!29050 (tuple2!7025 k!794 v!412))))))

(declare-fun mapNonEmpty!17787 () Bool)

(declare-fun tp!34404 () Bool)

(declare-fun e!249086 () Bool)

(assert (=> mapNonEmpty!17787 (= mapRes!17787 (and tp!34404 e!249086))))

(declare-fun mapRest!17787 () (Array (_ BitVec 32) ValueCell!5045))

(declare-fun mapKey!17787 () (_ BitVec 32))

(declare-fun mapValue!17787 () ValueCell!5045)

(assert (=> mapNonEmpty!17787 (= (arr!12142 _values!549) (store mapRest!17787 mapKey!17787 mapValue!17787))))

(declare-fun b!417537 () Bool)

(declare-fun res!243275 () Bool)

(assert (=> b!417537 (=> (not res!243275) (not e!249083))))

(assert (=> b!417537 (= res!243275 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12493 _keys!709))))))

(declare-fun b!417538 () Bool)

(declare-fun e!249084 () Bool)

(declare-fun tp_is_empty!10777 () Bool)

(assert (=> b!417538 (= e!249084 tp_is_empty!10777)))

(declare-fun b!417539 () Bool)

(assert (=> b!417539 (= e!249086 tp_is_empty!10777)))

(declare-fun b!417540 () Bool)

(declare-fun e!249087 () Bool)

(assert (=> b!417540 (= e!249087 true)))

(declare-fun lt!191351 () tuple2!7024)

(declare-fun lt!191356 () ListLongMap!5951)

(declare-fun lt!191353 () V!15475)

(assert (=> b!417540 (= (+!1202 lt!191356 lt!191351) (+!1202 (+!1202 lt!191356 (tuple2!7025 k!794 lt!191353)) lt!191351))))

(declare-fun lt!191352 () V!15475)

(assert (=> b!417540 (= lt!191351 (tuple2!7025 k!794 lt!191352))))

(declare-datatypes ((Unit!12305 0))(
  ( (Unit!12306) )
))
(declare-fun lt!191357 () Unit!12305)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!25 (ListLongMap!5951 (_ BitVec 64) V!15475 V!15475) Unit!12305)

(assert (=> b!417540 (= lt!191357 (addSameAsAddTwiceSameKeyDiffValues!25 lt!191356 k!794 lt!191353 lt!191352))))

(declare-fun lt!191349 () V!15475)

(declare-fun get!6016 (ValueCell!5045 V!15475) V!15475)

(assert (=> b!417540 (= lt!191353 (get!6016 (select (arr!12142 _values!549) from!863) lt!191349))))

(declare-fun lt!191348 () ListLongMap!5951)

(assert (=> b!417540 (= lt!191348 (+!1202 lt!191356 (tuple2!7025 (select (arr!12141 lt!191355) from!863) lt!191352)))))

(assert (=> b!417540 (= lt!191352 (get!6016 (select (store (arr!12142 _values!549) i!563 (ValueCellFull!5045 v!412)) from!863) lt!191349))))

(declare-fun dynLambda!687 (Int (_ BitVec 64)) V!15475)

(assert (=> b!417540 (= lt!191349 (dynLambda!687 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!417540 (= lt!191356 (getCurrentListMapNoExtraKeys!1194 lt!191355 lt!191358 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417541 () Bool)

(declare-fun res!243271 () Bool)

(assert (=> b!417541 (=> (not res!243271) (not e!249083))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!417541 (= res!243271 (validMask!0 mask!1025))))

(declare-fun b!417542 () Bool)

(declare-fun res!243269 () Bool)

(assert (=> b!417542 (=> (not res!243269) (not e!249083))))

(assert (=> b!417542 (= res!243269 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun bm!29048 () Bool)

(assert (=> bm!29048 (= call!29051 (getCurrentListMapNoExtraKeys!1194 (ite c!55076 lt!191355 _keys!709) (ite c!55076 lt!191358 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417543 () Bool)

(declare-fun res!243267 () Bool)

(assert (=> b!417543 (=> (not res!243267) (not e!249085))))

(assert (=> b!417543 (= res!243267 (bvsle from!863 i!563))))

(declare-fun b!417544 () Bool)

(declare-fun e!249088 () Bool)

(assert (=> b!417544 (= e!249088 (not e!249087))))

(declare-fun res!243274 () Bool)

(assert (=> b!417544 (=> res!243274 e!249087)))

(assert (=> b!417544 (= res!243274 (validKeyInArray!0 (select (arr!12141 _keys!709) from!863)))))

(assert (=> b!417544 e!249080))

(assert (=> b!417544 (= c!55076 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!191354 () Unit!12305)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!411 (array!25389 array!25391 (_ BitVec 32) (_ BitVec 32) V!15475 V!15475 (_ BitVec 32) (_ BitVec 64) V!15475 (_ BitVec 32) Int) Unit!12305)

(assert (=> b!417544 (= lt!191354 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!411 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!243265 () Bool)

(assert (=> start!39366 (=> (not res!243265) (not e!249083))))

(assert (=> start!39366 (= res!243265 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12493 _keys!709))))))

(assert (=> start!39366 e!249083))

(assert (=> start!39366 tp_is_empty!10777))

(assert (=> start!39366 tp!34403))

(assert (=> start!39366 true))

(declare-fun e!249082 () Bool)

(declare-fun array_inv!8854 (array!25391) Bool)

(assert (=> start!39366 (and (array_inv!8854 _values!549) e!249082)))

(declare-fun array_inv!8855 (array!25389) Bool)

(assert (=> start!39366 (array_inv!8855 _keys!709)))

(declare-fun b!417545 () Bool)

(assert (=> b!417545 (= e!249082 (and e!249084 mapRes!17787))))

(declare-fun condMapEmpty!17787 () Bool)

(declare-fun mapDefault!17787 () ValueCell!5045)

