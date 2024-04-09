; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39304 () Bool)

(assert start!39304)

(declare-fun b_free!9563 () Bool)

(declare-fun b_next!9563 () Bool)

(assert (=> start!39304 (= b_free!9563 (not b_next!9563))))

(declare-fun tp!34217 () Bool)

(declare-fun b_and!17019 () Bool)

(assert (=> start!39304 (= tp!34217 b_and!17019)))

(declare-datatypes ((V!15391 0))(
  ( (V!15392 (val!5402 Int)) )
))
(declare-fun minValue!515 () V!15391)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun bm!28861 () Bool)

(declare-fun c!54983 () Bool)

(declare-datatypes ((ValueCell!5014 0))(
  ( (ValueCellFull!5014 (v!7645 V!15391)) (EmptyCell!5014) )
))
(declare-datatypes ((array!25267 0))(
  ( (array!25268 (arr!12080 (Array (_ BitVec 32) ValueCell!5014)) (size!12432 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25267)

(declare-fun lt!190333 () array!25267)

(declare-fun zeroValue!515 () V!15391)

(declare-datatypes ((array!25269 0))(
  ( (array!25270 (arr!12081 (Array (_ BitVec 32) (_ BitVec 64))) (size!12433 (_ BitVec 32))) )
))
(declare-fun lt!190332 () array!25269)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun _keys!709 () array!25269)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((tuple2!6966 0))(
  ( (tuple2!6967 (_1!3493 (_ BitVec 64)) (_2!3493 V!15391)) )
))
(declare-datatypes ((List!7021 0))(
  ( (Nil!7018) (Cons!7017 (h!7873 tuple2!6966) (t!12257 List!7021)) )
))
(declare-datatypes ((ListLongMap!5893 0))(
  ( (ListLongMap!5894 (toList!2962 List!7021)) )
))
(declare-fun call!28865 () ListLongMap!5893)

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1166 (array!25269 array!25267 (_ BitVec 32) (_ BitVec 32) V!15391 V!15391 (_ BitVec 32) Int) ListLongMap!5893)

(assert (=> bm!28861 (= call!28865 (getCurrentListMapNoExtraKeys!1166 (ite c!54983 lt!190332 _keys!709) (ite c!54983 lt!190333 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!28862 () Bool)

(declare-fun call!28864 () ListLongMap!5893)

(assert (=> bm!28862 (= call!28864 (getCurrentListMapNoExtraKeys!1166 (ite c!54983 _keys!709 lt!190332) (ite c!54983 _values!549 lt!190333) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!415701 () Bool)

(declare-fun res!241969 () Bool)

(declare-fun e!248248 () Bool)

(assert (=> b!415701 (=> (not res!241969) (not e!248248))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!415701 (= res!241969 (validMask!0 mask!1025))))

(declare-fun b!415702 () Bool)

(declare-fun e!248245 () Bool)

(assert (=> b!415702 (= e!248248 e!248245)))

(declare-fun res!241971 () Bool)

(assert (=> b!415702 (=> (not res!241971) (not e!248245))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25269 (_ BitVec 32)) Bool)

(assert (=> b!415702 (= res!241971 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!190332 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!415702 (= lt!190332 (array!25270 (store (arr!12081 _keys!709) i!563 k!794) (size!12433 _keys!709)))))

(declare-fun b!415703 () Bool)

(declare-fun res!241970 () Bool)

(assert (=> b!415703 (=> (not res!241970) (not e!248248))))

(assert (=> b!415703 (= res!241970 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!415704 () Bool)

(declare-fun res!241968 () Bool)

(assert (=> b!415704 (=> (not res!241968) (not e!248248))))

(assert (=> b!415704 (= res!241968 (and (= (size!12432 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12433 _keys!709) (size!12432 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!17694 () Bool)

(declare-fun mapRes!17694 () Bool)

(assert (=> mapIsEmpty!17694 mapRes!17694))

(declare-fun b!415706 () Bool)

(declare-fun e!248246 () Bool)

(declare-fun v!412 () V!15391)

(declare-fun +!1175 (ListLongMap!5893 tuple2!6966) ListLongMap!5893)

(assert (=> b!415706 (= e!248246 (= call!28865 (+!1175 call!28864 (tuple2!6967 k!794 v!412))))))

(declare-fun b!415707 () Bool)

(declare-fun res!241962 () Bool)

(assert (=> b!415707 (=> (not res!241962) (not e!248245))))

(declare-datatypes ((List!7022 0))(
  ( (Nil!7019) (Cons!7018 (h!7874 (_ BitVec 64)) (t!12258 List!7022)) )
))
(declare-fun arrayNoDuplicates!0 (array!25269 (_ BitVec 32) List!7022) Bool)

(assert (=> b!415707 (= res!241962 (arrayNoDuplicates!0 lt!190332 #b00000000000000000000000000000000 Nil!7019))))

(declare-fun b!415708 () Bool)

(declare-fun e!248249 () Bool)

(declare-fun tp_is_empty!10715 () Bool)

(assert (=> b!415708 (= e!248249 tp_is_empty!10715)))

(declare-fun b!415709 () Bool)

(declare-fun res!241973 () Bool)

(assert (=> b!415709 (=> (not res!241973) (not e!248245))))

(assert (=> b!415709 (= res!241973 (bvsle from!863 i!563))))

(declare-fun b!415710 () Bool)

(declare-fun res!241966 () Bool)

(assert (=> b!415710 (=> (not res!241966) (not e!248248))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!415710 (= res!241966 (validKeyInArray!0 k!794))))

(declare-fun b!415711 () Bool)

(declare-fun e!248243 () Bool)

(declare-fun e!248244 () Bool)

(assert (=> b!415711 (= e!248243 (not e!248244))))

(declare-fun res!241961 () Bool)

(assert (=> b!415711 (=> res!241961 e!248244)))

(assert (=> b!415711 (= res!241961 (validKeyInArray!0 (select (arr!12081 _keys!709) from!863)))))

(assert (=> b!415711 e!248246))

(assert (=> b!415711 (= c!54983 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12249 0))(
  ( (Unit!12250) )
))
(declare-fun lt!190334 () Unit!12249)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!387 (array!25269 array!25267 (_ BitVec 32) (_ BitVec 32) V!15391 V!15391 (_ BitVec 32) (_ BitVec 64) V!15391 (_ BitVec 32) Int) Unit!12249)

(assert (=> b!415711 (= lt!190334 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!387 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!415712 () Bool)

(declare-fun e!248250 () Bool)

(assert (=> b!415712 (= e!248250 (and e!248249 mapRes!17694))))

(declare-fun condMapEmpty!17694 () Bool)

(declare-fun mapDefault!17694 () ValueCell!5014)

