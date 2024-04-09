; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39656 () Bool)

(assert start!39656)

(declare-fun b_free!9915 () Bool)

(declare-fun b_next!9915 () Bool)

(assert (=> start!39656 (= b_free!9915 (not b_next!9915))))

(declare-fun tp!35274 () Bool)

(declare-fun b_and!17589 () Bool)

(assert (=> start!39656 (= tp!35274 b_and!17589)))

(declare-fun b!425180 () Bool)

(declare-fun res!248989 () Bool)

(declare-fun e!252432 () Bool)

(assert (=> b!425180 (=> (not res!248989) (not e!252432))))

(declare-datatypes ((array!25961 0))(
  ( (array!25962 (arr!12427 (Array (_ BitVec 32) (_ BitVec 64))) (size!12779 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25961)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!425180 (= res!248989 (or (= (select (arr!12427 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12427 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!248998 () Bool)

(assert (=> start!39656 (=> (not res!248998) (not e!252432))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39656 (= res!248998 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12779 _keys!709))))))

(assert (=> start!39656 e!252432))

(declare-fun tp_is_empty!11067 () Bool)

(assert (=> start!39656 tp_is_empty!11067))

(assert (=> start!39656 tp!35274))

(assert (=> start!39656 true))

(declare-datatypes ((V!15861 0))(
  ( (V!15862 (val!5578 Int)) )
))
(declare-datatypes ((ValueCell!5190 0))(
  ( (ValueCellFull!5190 (v!7821 V!15861)) (EmptyCell!5190) )
))
(declare-datatypes ((array!25963 0))(
  ( (array!25964 (arr!12428 (Array (_ BitVec 32) ValueCell!5190)) (size!12780 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25963)

(declare-fun e!252433 () Bool)

(declare-fun array_inv!9058 (array!25963) Bool)

(assert (=> start!39656 (and (array_inv!9058 _values!549) e!252433)))

(declare-fun array_inv!9059 (array!25961) Bool)

(assert (=> start!39656 (array_inv!9059 _keys!709)))

(declare-fun b!425181 () Bool)

(declare-fun res!248997 () Bool)

(assert (=> b!425181 (=> (not res!248997) (not e!252432))))

(declare-datatypes ((List!7309 0))(
  ( (Nil!7306) (Cons!7305 (h!8161 (_ BitVec 64)) (t!12761 List!7309)) )
))
(declare-fun arrayNoDuplicates!0 (array!25961 (_ BitVec 32) List!7309) Bool)

(assert (=> b!425181 (= res!248997 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7306))))

(declare-fun b!425182 () Bool)

(declare-fun res!248994 () Bool)

(assert (=> b!425182 (=> (not res!248994) (not e!252432))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!425182 (= res!248994 (and (= (size!12780 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12779 _keys!709) (size!12780 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!425183 () Bool)

(declare-fun e!252427 () Bool)

(assert (=> b!425183 (= e!252427 tp_is_empty!11067)))

(declare-fun b!425184 () Bool)

(declare-fun e!252429 () Bool)

(declare-fun e!252428 () Bool)

(assert (=> b!425184 (= e!252429 e!252428)))

(declare-fun res!248995 () Bool)

(assert (=> b!425184 (=> (not res!248995) (not e!252428))))

(assert (=> b!425184 (= res!248995 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!15861)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!7264 0))(
  ( (tuple2!7265 (_1!3642 (_ BitVec 64)) (_2!3642 V!15861)) )
))
(declare-datatypes ((List!7310 0))(
  ( (Nil!7307) (Cons!7306 (h!8162 tuple2!7264) (t!12762 List!7310)) )
))
(declare-datatypes ((ListLongMap!6191 0))(
  ( (ListLongMap!6192 (toList!3111 List!7310)) )
))
(declare-fun lt!194592 () ListLongMap!6191)

(declare-fun zeroValue!515 () V!15861)

(declare-fun lt!194591 () array!25963)

(declare-fun lt!194595 () array!25961)

(declare-fun getCurrentListMapNoExtraKeys!1312 (array!25961 array!25963 (_ BitVec 32) (_ BitVec 32) V!15861 V!15861 (_ BitVec 32) Int) ListLongMap!6191)

(assert (=> b!425184 (= lt!194592 (getCurrentListMapNoExtraKeys!1312 lt!194595 lt!194591 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15861)

(assert (=> b!425184 (= lt!194591 (array!25964 (store (arr!12428 _values!549) i!563 (ValueCellFull!5190 v!412)) (size!12780 _values!549)))))

(declare-fun lt!194593 () ListLongMap!6191)

(assert (=> b!425184 (= lt!194593 (getCurrentListMapNoExtraKeys!1312 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!425185 () Bool)

(declare-fun res!249000 () Bool)

(assert (=> b!425185 (=> (not res!249000) (not e!252432))))

(assert (=> b!425185 (= res!249000 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12779 _keys!709))))))

(declare-fun b!425186 () Bool)

(declare-fun res!248988 () Bool)

(assert (=> b!425186 (=> (not res!248988) (not e!252432))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25961 (_ BitVec 32)) Bool)

(assert (=> b!425186 (= res!248988 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!18222 () Bool)

(declare-fun mapRes!18222 () Bool)

(declare-fun tp!35273 () Bool)

(declare-fun e!252430 () Bool)

(assert (=> mapNonEmpty!18222 (= mapRes!18222 (and tp!35273 e!252430))))

(declare-fun mapRest!18222 () (Array (_ BitVec 32) ValueCell!5190))

(declare-fun mapKey!18222 () (_ BitVec 32))

(declare-fun mapValue!18222 () ValueCell!5190)

(assert (=> mapNonEmpty!18222 (= (arr!12428 _values!549) (store mapRest!18222 mapKey!18222 mapValue!18222))))

(declare-fun b!425187 () Bool)

(declare-fun res!248993 () Bool)

(assert (=> b!425187 (=> (not res!248993) (not e!252429))))

(assert (=> b!425187 (= res!248993 (arrayNoDuplicates!0 lt!194595 #b00000000000000000000000000000000 Nil!7306))))

(declare-fun b!425188 () Bool)

(assert (=> b!425188 (= e!252430 tp_is_empty!11067)))

(declare-fun b!425189 () Bool)

(assert (=> b!425189 (= e!252432 e!252429)))

(declare-fun res!248996 () Bool)

(assert (=> b!425189 (=> (not res!248996) (not e!252429))))

(assert (=> b!425189 (= res!248996 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194595 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!425189 (= lt!194595 (array!25962 (store (arr!12427 _keys!709) i!563 k0!794) (size!12779 _keys!709)))))

(declare-fun b!425190 () Bool)

(declare-fun res!248990 () Bool)

(assert (=> b!425190 (=> (not res!248990) (not e!252432))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!425190 (= res!248990 (validKeyInArray!0 k0!794))))

(declare-fun mapIsEmpty!18222 () Bool)

(assert (=> mapIsEmpty!18222 mapRes!18222))

(declare-fun b!425191 () Bool)

(declare-fun res!248999 () Bool)

(assert (=> b!425191 (=> (not res!248999) (not e!252432))))

(declare-fun arrayContainsKey!0 (array!25961 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!425191 (= res!248999 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!425192 () Bool)

(declare-fun res!248991 () Bool)

(assert (=> b!425192 (=> (not res!248991) (not e!252429))))

(assert (=> b!425192 (= res!248991 (bvsle from!863 i!563))))

(declare-fun b!425193 () Bool)

(assert (=> b!425193 (= e!252433 (and e!252427 mapRes!18222))))

(declare-fun condMapEmpty!18222 () Bool)

(declare-fun mapDefault!18222 () ValueCell!5190)

(assert (=> b!425193 (= condMapEmpty!18222 (= (arr!12428 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5190)) mapDefault!18222)))))

(declare-fun b!425194 () Bool)

(assert (=> b!425194 (= e!252428 (not true))))

(declare-fun +!1270 (ListLongMap!6191 tuple2!7264) ListLongMap!6191)

(assert (=> b!425194 (= (getCurrentListMapNoExtraKeys!1312 lt!194595 lt!194591 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1270 (getCurrentListMapNoExtraKeys!1312 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7265 k0!794 v!412)))))

(declare-datatypes ((Unit!12443 0))(
  ( (Unit!12444) )
))
(declare-fun lt!194594 () Unit!12443)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!472 (array!25961 array!25963 (_ BitVec 32) (_ BitVec 32) V!15861 V!15861 (_ BitVec 32) (_ BitVec 64) V!15861 (_ BitVec 32) Int) Unit!12443)

(assert (=> b!425194 (= lt!194594 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!472 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!425195 () Bool)

(declare-fun res!248992 () Bool)

(assert (=> b!425195 (=> (not res!248992) (not e!252432))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!425195 (= res!248992 (validMask!0 mask!1025))))

(assert (= (and start!39656 res!248998) b!425195))

(assert (= (and b!425195 res!248992) b!425182))

(assert (= (and b!425182 res!248994) b!425186))

(assert (= (and b!425186 res!248988) b!425181))

(assert (= (and b!425181 res!248997) b!425185))

(assert (= (and b!425185 res!249000) b!425190))

(assert (= (and b!425190 res!248990) b!425180))

(assert (= (and b!425180 res!248989) b!425191))

(assert (= (and b!425191 res!248999) b!425189))

(assert (= (and b!425189 res!248996) b!425187))

(assert (= (and b!425187 res!248993) b!425192))

(assert (= (and b!425192 res!248991) b!425184))

(assert (= (and b!425184 res!248995) b!425194))

(assert (= (and b!425193 condMapEmpty!18222) mapIsEmpty!18222))

(assert (= (and b!425193 (not condMapEmpty!18222)) mapNonEmpty!18222))

(get-info :version)

(assert (= (and mapNonEmpty!18222 ((_ is ValueCellFull!5190) mapValue!18222)) b!425188))

(assert (= (and b!425193 ((_ is ValueCellFull!5190) mapDefault!18222)) b!425183))

(assert (= start!39656 b!425193))

(declare-fun m!414129 () Bool)

(assert (=> b!425187 m!414129))

(declare-fun m!414131 () Bool)

(assert (=> b!425189 m!414131))

(declare-fun m!414133 () Bool)

(assert (=> b!425189 m!414133))

(declare-fun m!414135 () Bool)

(assert (=> b!425184 m!414135))

(declare-fun m!414137 () Bool)

(assert (=> b!425184 m!414137))

(declare-fun m!414139 () Bool)

(assert (=> b!425184 m!414139))

(declare-fun m!414141 () Bool)

(assert (=> b!425195 m!414141))

(declare-fun m!414143 () Bool)

(assert (=> b!425186 m!414143))

(declare-fun m!414145 () Bool)

(assert (=> b!425194 m!414145))

(declare-fun m!414147 () Bool)

(assert (=> b!425194 m!414147))

(assert (=> b!425194 m!414147))

(declare-fun m!414149 () Bool)

(assert (=> b!425194 m!414149))

(declare-fun m!414151 () Bool)

(assert (=> b!425194 m!414151))

(declare-fun m!414153 () Bool)

(assert (=> b!425190 m!414153))

(declare-fun m!414155 () Bool)

(assert (=> b!425180 m!414155))

(declare-fun m!414157 () Bool)

(assert (=> mapNonEmpty!18222 m!414157))

(declare-fun m!414159 () Bool)

(assert (=> start!39656 m!414159))

(declare-fun m!414161 () Bool)

(assert (=> start!39656 m!414161))

(declare-fun m!414163 () Bool)

(assert (=> b!425191 m!414163))

(declare-fun m!414165 () Bool)

(assert (=> b!425181 m!414165))

(check-sat (not mapNonEmpty!18222) (not b!425187) (not start!39656) (not b!425181) b_and!17589 (not b!425191) (not b!425189) (not b!425195) tp_is_empty!11067 (not b!425190) (not b!425194) (not b!425184) (not b_next!9915) (not b!425186))
(check-sat b_and!17589 (not b_next!9915))
