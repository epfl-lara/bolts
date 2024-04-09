; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39208 () Bool)

(assert start!39208)

(declare-fun b_free!9467 () Bool)

(declare-fun b_next!9467 () Bool)

(assert (=> start!39208 (= b_free!9467 (not b_next!9467))))

(declare-fun tp!33929 () Bool)

(declare-fun b_and!16871 () Bool)

(assert (=> start!39208 (= tp!33929 b_and!16871)))

(declare-fun b!412969 () Bool)

(declare-fun res!240003 () Bool)

(declare-fun e!247002 () Bool)

(assert (=> b!412969 (=> (not res!240003) (not e!247002))))

(declare-datatypes ((array!25077 0))(
  ( (array!25078 (arr!11985 (Array (_ BitVec 32) (_ BitVec 64))) (size!12337 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25077)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15263 0))(
  ( (V!15264 (val!5354 Int)) )
))
(declare-datatypes ((ValueCell!4966 0))(
  ( (ValueCellFull!4966 (v!7597 V!15263)) (EmptyCell!4966) )
))
(declare-datatypes ((array!25079 0))(
  ( (array!25080 (arr!11986 (Array (_ BitVec 32) ValueCell!4966)) (size!12338 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25079)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!412969 (= res!240003 (and (= (size!12338 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12337 _keys!709) (size!12338 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!412970 () Bool)

(declare-fun res!240002 () Bool)

(assert (=> b!412970 (=> (not res!240002) (not e!247002))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25077 (_ BitVec 32)) Bool)

(assert (=> b!412970 (= res!240002 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!17550 () Bool)

(declare-fun mapRes!17550 () Bool)

(declare-fun tp!33930 () Bool)

(declare-fun e!247009 () Bool)

(assert (=> mapNonEmpty!17550 (= mapRes!17550 (and tp!33930 e!247009))))

(declare-fun mapKey!17550 () (_ BitVec 32))

(declare-fun mapRest!17550 () (Array (_ BitVec 32) ValueCell!4966))

(declare-fun mapValue!17550 () ValueCell!4966)

(assert (=> mapNonEmpty!17550 (= (arr!11986 _values!549) (store mapRest!17550 mapKey!17550 mapValue!17550))))

(declare-fun b!412971 () Bool)

(declare-fun res!240012 () Bool)

(assert (=> b!412971 (=> (not res!240012) (not e!247002))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!412971 (= res!240012 (validMask!0 mask!1025))))

(declare-fun b!412972 () Bool)

(declare-fun tp_is_empty!10619 () Bool)

(assert (=> b!412972 (= e!247009 tp_is_empty!10619)))

(declare-fun b!412973 () Bool)

(declare-fun res!240010 () Bool)

(assert (=> b!412973 (=> (not res!240010) (not e!247002))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25077 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!412973 (= res!240010 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!412974 () Bool)

(declare-fun res!240005 () Bool)

(assert (=> b!412974 (=> (not res!240005) (not e!247002))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!412974 (= res!240005 (or (= (select (arr!11985 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11985 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!412975 () Bool)

(declare-fun res!240007 () Bool)

(assert (=> b!412975 (=> (not res!240007) (not e!247002))))

(declare-datatypes ((List!6937 0))(
  ( (Nil!6934) (Cons!6933 (h!7789 (_ BitVec 64)) (t!12119 List!6937)) )
))
(declare-fun arrayNoDuplicates!0 (array!25077 (_ BitVec 32) List!6937) Bool)

(assert (=> b!412975 (= res!240007 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6934))))

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!189615 () array!25079)

(declare-fun zeroValue!515 () V!15263)

(declare-fun bm!28573 () Bool)

(declare-fun c!54839 () Bool)

(declare-fun lt!189612 () array!25077)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!15263)

(declare-datatypes ((tuple2!6876 0))(
  ( (tuple2!6877 (_1!3448 (_ BitVec 64)) (_2!3448 V!15263)) )
))
(declare-datatypes ((List!6938 0))(
  ( (Nil!6935) (Cons!6934 (h!7790 tuple2!6876) (t!12120 List!6938)) )
))
(declare-datatypes ((ListLongMap!5803 0))(
  ( (ListLongMap!5804 (toList!2917 List!6938)) )
))
(declare-fun call!28576 () ListLongMap!5803)

(declare-fun getCurrentListMapNoExtraKeys!1127 (array!25077 array!25079 (_ BitVec 32) (_ BitVec 32) V!15263 V!15263 (_ BitVec 32) Int) ListLongMap!5803)

(assert (=> bm!28573 (= call!28576 (getCurrentListMapNoExtraKeys!1127 (ite c!54839 lt!189612 _keys!709) (ite c!54839 lt!189615 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!412976 () Bool)

(declare-fun res!240009 () Bool)

(assert (=> b!412976 (=> (not res!240009) (not e!247002))))

(assert (=> b!412976 (= res!240009 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12337 _keys!709))))))

(declare-fun call!28577 () ListLongMap!5803)

(declare-fun bm!28574 () Bool)

(assert (=> bm!28574 (= call!28577 (getCurrentListMapNoExtraKeys!1127 (ite c!54839 _keys!709 lt!189612) (ite c!54839 _values!549 lt!189615) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!412977 () Bool)

(declare-fun e!247004 () Bool)

(assert (=> b!412977 (= e!247002 e!247004)))

(declare-fun res!240000 () Bool)

(assert (=> b!412977 (=> (not res!240000) (not e!247004))))

(assert (=> b!412977 (= res!240000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189612 mask!1025))))

(assert (=> b!412977 (= lt!189612 (array!25078 (store (arr!11985 _keys!709) i!563 k!794) (size!12337 _keys!709)))))

(declare-fun res!240011 () Bool)

(assert (=> start!39208 (=> (not res!240011) (not e!247002))))

(assert (=> start!39208 (= res!240011 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12337 _keys!709))))))

(assert (=> start!39208 e!247002))

(assert (=> start!39208 tp_is_empty!10619))

(assert (=> start!39208 tp!33929))

(assert (=> start!39208 true))

(declare-fun e!247007 () Bool)

(declare-fun array_inv!8740 (array!25079) Bool)

(assert (=> start!39208 (and (array_inv!8740 _values!549) e!247007)))

(declare-fun array_inv!8741 (array!25077) Bool)

(assert (=> start!39208 (array_inv!8741 _keys!709)))

(declare-fun e!247003 () Bool)

(declare-fun b!412968 () Bool)

(declare-fun v!412 () V!15263)

(declare-fun +!1140 (ListLongMap!5803 tuple2!6876) ListLongMap!5803)

(assert (=> b!412968 (= e!247003 (= call!28576 (+!1140 call!28577 (tuple2!6877 k!794 v!412))))))

(declare-fun b!412978 () Bool)

(declare-fun e!247008 () Bool)

(assert (=> b!412978 (= e!247008 (not true))))

(assert (=> b!412978 e!247003))

(assert (=> b!412978 (= c!54839 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12177 0))(
  ( (Unit!12178) )
))
(declare-fun lt!189611 () Unit!12177)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!351 (array!25077 array!25079 (_ BitVec 32) (_ BitVec 32) V!15263 V!15263 (_ BitVec 32) (_ BitVec 64) V!15263 (_ BitVec 32) Int) Unit!12177)

(assert (=> b!412978 (= lt!189611 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!351 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!412979 () Bool)

(declare-fun e!247006 () Bool)

(assert (=> b!412979 (= e!247007 (and e!247006 mapRes!17550))))

(declare-fun condMapEmpty!17550 () Bool)

(declare-fun mapDefault!17550 () ValueCell!4966)

