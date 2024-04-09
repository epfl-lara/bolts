; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39372 () Bool)

(assert start!39372)

(declare-fun b_free!9631 () Bool)

(declare-fun b_next!9631 () Bool)

(assert (=> start!39372 (= b_free!9631 (not b_next!9631))))

(declare-fun tp!34421 () Bool)

(declare-fun b_and!17155 () Bool)

(assert (=> start!39372 (= tp!34421 b_and!17155)))

(declare-fun b!417707 () Bool)

(declare-fun e!249163 () Bool)

(declare-fun e!249162 () Bool)

(assert (=> b!417707 (= e!249163 e!249162)))

(declare-fun res!243393 () Bool)

(assert (=> b!417707 (=> (not res!243393) (not e!249162))))

(declare-datatypes ((array!25401 0))(
  ( (array!25402 (arr!12147 (Array (_ BitVec 32) (_ BitVec 64))) (size!12499 (_ BitVec 32))) )
))
(declare-fun lt!191456 () array!25401)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25401 (_ BitVec 32)) Bool)

(assert (=> b!417707 (= res!243393 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!191456 mask!1025))))

(declare-fun _keys!709 () array!25401)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!417707 (= lt!191456 (array!25402 (store (arr!12147 _keys!709) i!563 k!794) (size!12499 _keys!709)))))

(declare-fun b!417708 () Bool)

(declare-fun res!243399 () Bool)

(assert (=> b!417708 (=> (not res!243399) (not e!249163))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!417708 (= res!243399 (validMask!0 mask!1025))))

(declare-fun b!417709 () Bool)

(declare-fun res!243402 () Bool)

(assert (=> b!417709 (=> (not res!243402) (not e!249163))))

(declare-fun arrayContainsKey!0 (array!25401 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!417709 (= res!243402 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!417711 () Bool)

(declare-fun res!243391 () Bool)

(assert (=> b!417711 (=> (not res!243391) (not e!249163))))

(assert (=> b!417711 (= res!243391 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12499 _keys!709))))))

(declare-fun b!417712 () Bool)

(declare-fun e!249165 () Bool)

(declare-datatypes ((V!15483 0))(
  ( (V!15484 (val!5436 Int)) )
))
(declare-datatypes ((tuple2!7030 0))(
  ( (tuple2!7031 (_1!3525 (_ BitVec 64)) (_2!3525 V!15483)) )
))
(declare-datatypes ((List!7082 0))(
  ( (Nil!7079) (Cons!7078 (h!7934 tuple2!7030) (t!12386 List!7082)) )
))
(declare-datatypes ((ListLongMap!5957 0))(
  ( (ListLongMap!5958 (toList!2994 List!7082)) )
))
(declare-fun call!29068 () ListLongMap!5957)

(declare-fun call!29069 () ListLongMap!5957)

(assert (=> b!417712 (= e!249165 (= call!29068 call!29069))))

(declare-fun b!417713 () Bool)

(declare-fun e!249168 () Bool)

(assert (=> b!417713 (= e!249162 e!249168)))

(declare-fun res!243400 () Bool)

(assert (=> b!417713 (=> (not res!243400) (not e!249168))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!417713 (= res!243400 (= from!863 i!563))))

(declare-fun minValue!515 () V!15483)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5048 0))(
  ( (ValueCellFull!5048 (v!7679 V!15483)) (EmptyCell!5048) )
))
(declare-datatypes ((array!25403 0))(
  ( (array!25404 (arr!12148 (Array (_ BitVec 32) ValueCell!5048)) (size!12500 (_ BitVec 32))) )
))
(declare-fun lt!191448 () array!25403)

(declare-fun zeroValue!515 () V!15483)

(declare-fun lt!191449 () ListLongMap!5957)

(declare-fun getCurrentListMapNoExtraKeys!1197 (array!25401 array!25403 (_ BitVec 32) (_ BitVec 32) V!15483 V!15483 (_ BitVec 32) Int) ListLongMap!5957)

(assert (=> b!417713 (= lt!191449 (getCurrentListMapNoExtraKeys!1197 lt!191456 lt!191448 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!25403)

(declare-fun v!412 () V!15483)

(assert (=> b!417713 (= lt!191448 (array!25404 (store (arr!12148 _values!549) i!563 (ValueCellFull!5048 v!412)) (size!12500 _values!549)))))

(declare-fun lt!191447 () ListLongMap!5957)

(assert (=> b!417713 (= lt!191447 (getCurrentListMapNoExtraKeys!1197 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapIsEmpty!17796 () Bool)

(declare-fun mapRes!17796 () Bool)

(assert (=> mapIsEmpty!17796 mapRes!17796))

(declare-fun c!55085 () Bool)

(declare-fun bm!29065 () Bool)

(assert (=> bm!29065 (= call!29068 (getCurrentListMapNoExtraKeys!1197 (ite c!55085 _keys!709 lt!191456) (ite c!55085 _values!549 lt!191448) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417714 () Bool)

(declare-fun res!243396 () Bool)

(assert (=> b!417714 (=> (not res!243396) (not e!249163))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!417714 (= res!243396 (validKeyInArray!0 k!794))))

(declare-fun b!417715 () Bool)

(declare-fun res!243390 () Bool)

(assert (=> b!417715 (=> (not res!243390) (not e!249162))))

(declare-datatypes ((List!7083 0))(
  ( (Nil!7080) (Cons!7079 (h!7935 (_ BitVec 64)) (t!12387 List!7083)) )
))
(declare-fun arrayNoDuplicates!0 (array!25401 (_ BitVec 32) List!7083) Bool)

(assert (=> b!417715 (= res!243390 (arrayNoDuplicates!0 lt!191456 #b00000000000000000000000000000000 Nil!7080))))

(declare-fun b!417716 () Bool)

(declare-fun res!243398 () Bool)

(assert (=> b!417716 (=> (not res!243398) (not e!249162))))

(assert (=> b!417716 (= res!243398 (bvsle from!863 i!563))))

(declare-fun b!417717 () Bool)

(declare-fun e!249164 () Bool)

(declare-fun e!249169 () Bool)

(assert (=> b!417717 (= e!249164 (and e!249169 mapRes!17796))))

(declare-fun condMapEmpty!17796 () Bool)

(declare-fun mapDefault!17796 () ValueCell!5048)

