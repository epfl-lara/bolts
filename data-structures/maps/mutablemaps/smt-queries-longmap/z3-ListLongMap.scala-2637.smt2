; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39650 () Bool)

(assert start!39650)

(declare-fun b_free!9909 () Bool)

(declare-fun b_next!9909 () Bool)

(assert (=> start!39650 (= b_free!9909 (not b_next!9909))))

(declare-fun tp!35255 () Bool)

(declare-fun b_and!17583 () Bool)

(assert (=> start!39650 (= tp!35255 b_and!17583)))

(declare-fun b!425036 () Bool)

(declare-fun res!248882 () Bool)

(declare-fun e!252365 () Bool)

(assert (=> b!425036 (=> (not res!248882) (not e!252365))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!425036 (= res!248882 (validKeyInArray!0 k0!794))))

(declare-fun b!425037 () Bool)

(declare-fun res!248879 () Bool)

(assert (=> b!425037 (=> (not res!248879) (not e!252365))))

(declare-datatypes ((array!25949 0))(
  ( (array!25950 (arr!12421 (Array (_ BitVec 32) (_ BitVec 64))) (size!12773 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25949)

(declare-datatypes ((List!7305 0))(
  ( (Nil!7302) (Cons!7301 (h!8157 (_ BitVec 64)) (t!12757 List!7305)) )
))
(declare-fun arrayNoDuplicates!0 (array!25949 (_ BitVec 32) List!7305) Bool)

(assert (=> b!425037 (= res!248879 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7302))))

(declare-fun b!425038 () Bool)

(declare-fun e!252367 () Bool)

(declare-fun tp_is_empty!11061 () Bool)

(assert (=> b!425038 (= e!252367 tp_is_empty!11061)))

(declare-fun mapIsEmpty!18213 () Bool)

(declare-fun mapRes!18213 () Bool)

(assert (=> mapIsEmpty!18213 mapRes!18213))

(declare-fun b!425039 () Bool)

(declare-fun res!248878 () Bool)

(assert (=> b!425039 (=> (not res!248878) (not e!252365))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!425039 (= res!248878 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12773 _keys!709))))))

(declare-fun res!248872 () Bool)

(assert (=> start!39650 (=> (not res!248872) (not e!252365))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39650 (= res!248872 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12773 _keys!709))))))

(assert (=> start!39650 e!252365))

(assert (=> start!39650 tp_is_empty!11061))

(assert (=> start!39650 tp!35255))

(assert (=> start!39650 true))

(declare-datatypes ((V!15853 0))(
  ( (V!15854 (val!5575 Int)) )
))
(declare-datatypes ((ValueCell!5187 0))(
  ( (ValueCellFull!5187 (v!7818 V!15853)) (EmptyCell!5187) )
))
(declare-datatypes ((array!25951 0))(
  ( (array!25952 (arr!12422 (Array (_ BitVec 32) ValueCell!5187)) (size!12774 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25951)

(declare-fun e!252364 () Bool)

(declare-fun array_inv!9054 (array!25951) Bool)

(assert (=> start!39650 (and (array_inv!9054 _values!549) e!252364)))

(declare-fun array_inv!9055 (array!25949) Bool)

(assert (=> start!39650 (array_inv!9055 _keys!709)))

(declare-fun b!425040 () Bool)

(declare-fun res!248876 () Bool)

(assert (=> b!425040 (=> (not res!248876) (not e!252365))))

(declare-fun arrayContainsKey!0 (array!25949 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!425040 (= res!248876 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!425041 () Bool)

(declare-fun res!248883 () Bool)

(assert (=> b!425041 (=> (not res!248883) (not e!252365))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!425041 (= res!248883 (validMask!0 mask!1025))))

(declare-fun b!425042 () Bool)

(declare-fun res!248873 () Bool)

(declare-fun e!252368 () Bool)

(assert (=> b!425042 (=> (not res!248873) (not e!252368))))

(assert (=> b!425042 (= res!248873 (bvsle from!863 i!563))))

(declare-fun b!425043 () Bool)

(assert (=> b!425043 (= e!252365 e!252368)))

(declare-fun res!248877 () Bool)

(assert (=> b!425043 (=> (not res!248877) (not e!252368))))

(declare-fun lt!194549 () array!25949)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25949 (_ BitVec 32)) Bool)

(assert (=> b!425043 (= res!248877 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194549 mask!1025))))

(assert (=> b!425043 (= lt!194549 (array!25950 (store (arr!12421 _keys!709) i!563 k0!794) (size!12773 _keys!709)))))

(declare-fun b!425044 () Bool)

(declare-fun e!252370 () Bool)

(assert (=> b!425044 (= e!252364 (and e!252370 mapRes!18213))))

(declare-fun condMapEmpty!18213 () Bool)

(declare-fun mapDefault!18213 () ValueCell!5187)

(assert (=> b!425044 (= condMapEmpty!18213 (= (arr!12422 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5187)) mapDefault!18213)))))

(declare-fun b!425045 () Bool)

(declare-fun res!248871 () Bool)

(assert (=> b!425045 (=> (not res!248871) (not e!252365))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!425045 (= res!248871 (and (= (size!12774 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12773 _keys!709) (size!12774 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!425046 () Bool)

(assert (=> b!425046 (= e!252370 tp_is_empty!11061)))

(declare-fun b!425047 () Bool)

(declare-fun res!248881 () Bool)

(assert (=> b!425047 (=> (not res!248881) (not e!252368))))

(assert (=> b!425047 (= res!248881 (arrayNoDuplicates!0 lt!194549 #b00000000000000000000000000000000 Nil!7302))))

(declare-fun b!425048 () Bool)

(declare-fun e!252369 () Bool)

(assert (=> b!425048 (= e!252369 (not true))))

(declare-fun minValue!515 () V!15853)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15853)

(declare-fun lt!194547 () array!25951)

(declare-fun v!412 () V!15853)

(declare-datatypes ((tuple2!7260 0))(
  ( (tuple2!7261 (_1!3640 (_ BitVec 64)) (_2!3640 V!15853)) )
))
(declare-datatypes ((List!7306 0))(
  ( (Nil!7303) (Cons!7302 (h!8158 tuple2!7260) (t!12758 List!7306)) )
))
(declare-datatypes ((ListLongMap!6187 0))(
  ( (ListLongMap!6188 (toList!3109 List!7306)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1310 (array!25949 array!25951 (_ BitVec 32) (_ BitVec 32) V!15853 V!15853 (_ BitVec 32) Int) ListLongMap!6187)

(declare-fun +!1269 (ListLongMap!6187 tuple2!7260) ListLongMap!6187)

(assert (=> b!425048 (= (getCurrentListMapNoExtraKeys!1310 lt!194549 lt!194547 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1269 (getCurrentListMapNoExtraKeys!1310 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7261 k0!794 v!412)))))

(declare-datatypes ((Unit!12441 0))(
  ( (Unit!12442) )
))
(declare-fun lt!194550 () Unit!12441)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!471 (array!25949 array!25951 (_ BitVec 32) (_ BitVec 32) V!15853 V!15853 (_ BitVec 32) (_ BitVec 64) V!15853 (_ BitVec 32) Int) Unit!12441)

(assert (=> b!425048 (= lt!194550 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!471 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!425049 () Bool)

(assert (=> b!425049 (= e!252368 e!252369)))

(declare-fun res!248874 () Bool)

(assert (=> b!425049 (=> (not res!248874) (not e!252369))))

(assert (=> b!425049 (= res!248874 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!194548 () ListLongMap!6187)

(assert (=> b!425049 (= lt!194548 (getCurrentListMapNoExtraKeys!1310 lt!194549 lt!194547 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!425049 (= lt!194547 (array!25952 (store (arr!12422 _values!549) i!563 (ValueCellFull!5187 v!412)) (size!12774 _values!549)))))

(declare-fun lt!194546 () ListLongMap!6187)

(assert (=> b!425049 (= lt!194546 (getCurrentListMapNoExtraKeys!1310 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapNonEmpty!18213 () Bool)

(declare-fun tp!35256 () Bool)

(assert (=> mapNonEmpty!18213 (= mapRes!18213 (and tp!35256 e!252367))))

(declare-fun mapKey!18213 () (_ BitVec 32))

(declare-fun mapRest!18213 () (Array (_ BitVec 32) ValueCell!5187))

(declare-fun mapValue!18213 () ValueCell!5187)

(assert (=> mapNonEmpty!18213 (= (arr!12422 _values!549) (store mapRest!18213 mapKey!18213 mapValue!18213))))

(declare-fun b!425050 () Bool)

(declare-fun res!248875 () Bool)

(assert (=> b!425050 (=> (not res!248875) (not e!252365))))

(assert (=> b!425050 (= res!248875 (or (= (select (arr!12421 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12421 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!425051 () Bool)

(declare-fun res!248880 () Bool)

(assert (=> b!425051 (=> (not res!248880) (not e!252365))))

(assert (=> b!425051 (= res!248880 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(assert (= (and start!39650 res!248872) b!425041))

(assert (= (and b!425041 res!248883) b!425045))

(assert (= (and b!425045 res!248871) b!425051))

(assert (= (and b!425051 res!248880) b!425037))

(assert (= (and b!425037 res!248879) b!425039))

(assert (= (and b!425039 res!248878) b!425036))

(assert (= (and b!425036 res!248882) b!425050))

(assert (= (and b!425050 res!248875) b!425040))

(assert (= (and b!425040 res!248876) b!425043))

(assert (= (and b!425043 res!248877) b!425047))

(assert (= (and b!425047 res!248881) b!425042))

(assert (= (and b!425042 res!248873) b!425049))

(assert (= (and b!425049 res!248874) b!425048))

(assert (= (and b!425044 condMapEmpty!18213) mapIsEmpty!18213))

(assert (= (and b!425044 (not condMapEmpty!18213)) mapNonEmpty!18213))

(get-info :version)

(assert (= (and mapNonEmpty!18213 ((_ is ValueCellFull!5187) mapValue!18213)) b!425038))

(assert (= (and b!425044 ((_ is ValueCellFull!5187) mapDefault!18213)) b!425046))

(assert (= start!39650 b!425044))

(declare-fun m!414015 () Bool)

(assert (=> b!425036 m!414015))

(declare-fun m!414017 () Bool)

(assert (=> b!425041 m!414017))

(declare-fun m!414019 () Bool)

(assert (=> b!425051 m!414019))

(declare-fun m!414021 () Bool)

(assert (=> b!425048 m!414021))

(declare-fun m!414023 () Bool)

(assert (=> b!425048 m!414023))

(assert (=> b!425048 m!414023))

(declare-fun m!414025 () Bool)

(assert (=> b!425048 m!414025))

(declare-fun m!414027 () Bool)

(assert (=> b!425048 m!414027))

(declare-fun m!414029 () Bool)

(assert (=> mapNonEmpty!18213 m!414029))

(declare-fun m!414031 () Bool)

(assert (=> b!425047 m!414031))

(declare-fun m!414033 () Bool)

(assert (=> b!425040 m!414033))

(declare-fun m!414035 () Bool)

(assert (=> b!425043 m!414035))

(declare-fun m!414037 () Bool)

(assert (=> b!425043 m!414037))

(declare-fun m!414039 () Bool)

(assert (=> b!425037 m!414039))

(declare-fun m!414041 () Bool)

(assert (=> b!425050 m!414041))

(declare-fun m!414043 () Bool)

(assert (=> b!425049 m!414043))

(declare-fun m!414045 () Bool)

(assert (=> b!425049 m!414045))

(declare-fun m!414047 () Bool)

(assert (=> b!425049 m!414047))

(declare-fun m!414049 () Bool)

(assert (=> start!39650 m!414049))

(declare-fun m!414051 () Bool)

(assert (=> start!39650 m!414051))

(check-sat b_and!17583 (not mapNonEmpty!18213) (not b!425036) (not b!425048) (not b!425047) tp_is_empty!11061 (not b!425037) (not b!425041) (not start!39650) (not b!425043) (not b!425051) (not b_next!9909) (not b!425049) (not b!425040))
(check-sat b_and!17583 (not b_next!9909))
