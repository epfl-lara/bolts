; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39092 () Bool)

(assert start!39092)

(declare-fun b_free!9351 () Bool)

(declare-fun b_next!9351 () Bool)

(assert (=> start!39092 (= b_free!9351 (not b_next!9351))))

(declare-fun tp!33581 () Bool)

(declare-fun b_and!16755 () Bool)

(assert (=> start!39092 (= tp!33581 b_and!16755)))

(declare-fun b!410308 () Bool)

(declare-fun res!237895 () Bool)

(declare-fun e!245926 () Bool)

(assert (=> b!410308 (=> (not res!237895) (not e!245926))))

(declare-datatypes ((array!24855 0))(
  ( (array!24856 (arr!11874 (Array (_ BitVec 32) (_ BitVec 64))) (size!12226 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24855)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!410308 (= res!237895 (or (= (select (arr!11874 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11874 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!410309 () Bool)

(declare-fun res!237899 () Bool)

(assert (=> b!410309 (=> (not res!237899) (not e!245926))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24855 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!410309 (= res!237899 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!410310 () Bool)

(declare-fun res!237897 () Bool)

(assert (=> b!410310 (=> (not res!237897) (not e!245926))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15109 0))(
  ( (V!15110 (val!5296 Int)) )
))
(declare-datatypes ((ValueCell!4908 0))(
  ( (ValueCellFull!4908 (v!7539 V!15109)) (EmptyCell!4908) )
))
(declare-datatypes ((array!24857 0))(
  ( (array!24858 (arr!11875 (Array (_ BitVec 32) ValueCell!4908)) (size!12227 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24857)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!410310 (= res!237897 (and (= (size!12227 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12226 _keys!709) (size!12227 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!410311 () Bool)

(declare-fun res!237905 () Bool)

(assert (=> b!410311 (=> (not res!237905) (not e!245926))))

(declare-datatypes ((List!6858 0))(
  ( (Nil!6855) (Cons!6854 (h!7710 (_ BitVec 64)) (t!12040 List!6858)) )
))
(declare-fun arrayNoDuplicates!0 (array!24855 (_ BitVec 32) List!6858) Bool)

(assert (=> b!410311 (= res!237905 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6855))))

(declare-fun b!410312 () Bool)

(declare-fun res!237898 () Bool)

(assert (=> b!410312 (=> (not res!237898) (not e!245926))))

(assert (=> b!410312 (= res!237898 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12226 _keys!709))))))

(declare-fun b!410313 () Bool)

(declare-fun res!237896 () Bool)

(declare-fun e!245924 () Bool)

(assert (=> b!410313 (=> (not res!237896) (not e!245924))))

(declare-fun lt!189055 () array!24855)

(assert (=> b!410313 (= res!237896 (arrayNoDuplicates!0 lt!189055 #b00000000000000000000000000000000 Nil!6855))))

(declare-fun b!410314 () Bool)

(declare-fun e!245927 () Bool)

(declare-fun tp_is_empty!10503 () Bool)

(assert (=> b!410314 (= e!245927 tp_is_empty!10503)))

(declare-fun mapIsEmpty!17376 () Bool)

(declare-fun mapRes!17376 () Bool)

(assert (=> mapIsEmpty!17376 mapRes!17376))

(declare-fun b!410315 () Bool)

(assert (=> b!410315 (= e!245924 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!15109)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15109)

(declare-datatypes ((tuple2!6804 0))(
  ( (tuple2!6805 (_1!3412 (_ BitVec 64)) (_2!3412 V!15109)) )
))
(declare-datatypes ((List!6859 0))(
  ( (Nil!6856) (Cons!6855 (h!7711 tuple2!6804) (t!12041 List!6859)) )
))
(declare-datatypes ((ListLongMap!5731 0))(
  ( (ListLongMap!5732 (toList!2881 List!6859)) )
))
(declare-fun lt!189057 () ListLongMap!5731)

(declare-fun v!412 () V!15109)

(declare-fun getCurrentListMapNoExtraKeys!1091 (array!24855 array!24857 (_ BitVec 32) (_ BitVec 32) V!15109 V!15109 (_ BitVec 32) Int) ListLongMap!5731)

(assert (=> b!410315 (= lt!189057 (getCurrentListMapNoExtraKeys!1091 lt!189055 (array!24858 (store (arr!11875 _values!549) i!563 (ValueCellFull!4908 v!412)) (size!12227 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!189056 () ListLongMap!5731)

(assert (=> b!410315 (= lt!189056 (getCurrentListMapNoExtraKeys!1091 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!410316 () Bool)

(declare-fun res!237906 () Bool)

(assert (=> b!410316 (=> (not res!237906) (not e!245926))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24855 (_ BitVec 32)) Bool)

(assert (=> b!410316 (= res!237906 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!410317 () Bool)

(assert (=> b!410317 (= e!245926 e!245924)))

(declare-fun res!237902 () Bool)

(assert (=> b!410317 (=> (not res!237902) (not e!245924))))

(assert (=> b!410317 (= res!237902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189055 mask!1025))))

(assert (=> b!410317 (= lt!189055 (array!24856 (store (arr!11874 _keys!709) i!563 k0!794) (size!12226 _keys!709)))))

(declare-fun b!410318 () Bool)

(declare-fun e!245929 () Bool)

(assert (=> b!410318 (= e!245929 tp_is_empty!10503)))

(declare-fun b!410307 () Bool)

(declare-fun e!245928 () Bool)

(assert (=> b!410307 (= e!245928 (and e!245927 mapRes!17376))))

(declare-fun condMapEmpty!17376 () Bool)

(declare-fun mapDefault!17376 () ValueCell!4908)

(assert (=> b!410307 (= condMapEmpty!17376 (= (arr!11875 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4908)) mapDefault!17376)))))

(declare-fun res!237904 () Bool)

(assert (=> start!39092 (=> (not res!237904) (not e!245926))))

(assert (=> start!39092 (= res!237904 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12226 _keys!709))))))

(assert (=> start!39092 e!245926))

(assert (=> start!39092 tp_is_empty!10503))

(assert (=> start!39092 tp!33581))

(assert (=> start!39092 true))

(declare-fun array_inv!8670 (array!24857) Bool)

(assert (=> start!39092 (and (array_inv!8670 _values!549) e!245928)))

(declare-fun array_inv!8671 (array!24855) Bool)

(assert (=> start!39092 (array_inv!8671 _keys!709)))

(declare-fun mapNonEmpty!17376 () Bool)

(declare-fun tp!33582 () Bool)

(assert (=> mapNonEmpty!17376 (= mapRes!17376 (and tp!33582 e!245929))))

(declare-fun mapKey!17376 () (_ BitVec 32))

(declare-fun mapValue!17376 () ValueCell!4908)

(declare-fun mapRest!17376 () (Array (_ BitVec 32) ValueCell!4908))

(assert (=> mapNonEmpty!17376 (= (arr!11875 _values!549) (store mapRest!17376 mapKey!17376 mapValue!17376))))

(declare-fun b!410319 () Bool)

(declare-fun res!237900 () Bool)

(assert (=> b!410319 (=> (not res!237900) (not e!245924))))

(assert (=> b!410319 (= res!237900 (bvsle from!863 i!563))))

(declare-fun b!410320 () Bool)

(declare-fun res!237901 () Bool)

(assert (=> b!410320 (=> (not res!237901) (not e!245926))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!410320 (= res!237901 (validMask!0 mask!1025))))

(declare-fun b!410321 () Bool)

(declare-fun res!237903 () Bool)

(assert (=> b!410321 (=> (not res!237903) (not e!245926))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!410321 (= res!237903 (validKeyInArray!0 k0!794))))

(assert (= (and start!39092 res!237904) b!410320))

(assert (= (and b!410320 res!237901) b!410310))

(assert (= (and b!410310 res!237897) b!410316))

(assert (= (and b!410316 res!237906) b!410311))

(assert (= (and b!410311 res!237905) b!410312))

(assert (= (and b!410312 res!237898) b!410321))

(assert (= (and b!410321 res!237903) b!410308))

(assert (= (and b!410308 res!237895) b!410309))

(assert (= (and b!410309 res!237899) b!410317))

(assert (= (and b!410317 res!237902) b!410313))

(assert (= (and b!410313 res!237896) b!410319))

(assert (= (and b!410319 res!237900) b!410315))

(assert (= (and b!410307 condMapEmpty!17376) mapIsEmpty!17376))

(assert (= (and b!410307 (not condMapEmpty!17376)) mapNonEmpty!17376))

(get-info :version)

(assert (= (and mapNonEmpty!17376 ((_ is ValueCellFull!4908) mapValue!17376)) b!410318))

(assert (= (and b!410307 ((_ is ValueCellFull!4908) mapDefault!17376)) b!410314))

(assert (= start!39092 b!410307))

(declare-fun m!400809 () Bool)

(assert (=> mapNonEmpty!17376 m!400809))

(declare-fun m!400811 () Bool)

(assert (=> b!410309 m!400811))

(declare-fun m!400813 () Bool)

(assert (=> b!410321 m!400813))

(declare-fun m!400815 () Bool)

(assert (=> b!410308 m!400815))

(declare-fun m!400817 () Bool)

(assert (=> start!39092 m!400817))

(declare-fun m!400819 () Bool)

(assert (=> start!39092 m!400819))

(declare-fun m!400821 () Bool)

(assert (=> b!410315 m!400821))

(declare-fun m!400823 () Bool)

(assert (=> b!410315 m!400823))

(declare-fun m!400825 () Bool)

(assert (=> b!410315 m!400825))

(declare-fun m!400827 () Bool)

(assert (=> b!410311 m!400827))

(declare-fun m!400829 () Bool)

(assert (=> b!410320 m!400829))

(declare-fun m!400831 () Bool)

(assert (=> b!410316 m!400831))

(declare-fun m!400833 () Bool)

(assert (=> b!410313 m!400833))

(declare-fun m!400835 () Bool)

(assert (=> b!410317 m!400835))

(declare-fun m!400837 () Bool)

(assert (=> b!410317 m!400837))

(check-sat (not mapNonEmpty!17376) (not b!410309) (not b!410320) (not b!410316) (not start!39092) tp_is_empty!10503 (not b!410317) (not b_next!9351) (not b!410313) b_and!16755 (not b!410311) (not b!410321) (not b!410315))
(check-sat b_and!16755 (not b_next!9351))
