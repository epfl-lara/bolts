; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39740 () Bool)

(assert start!39740)

(declare-fun b_free!9999 () Bool)

(declare-fun b_next!9999 () Bool)

(assert (=> start!39740 (= b_free!9999 (not b_next!9999))))

(declare-fun tp!35525 () Bool)

(declare-fun b_and!17675 () Bool)

(assert (=> start!39740 (= tp!35525 b_and!17675)))

(declare-fun b!427212 () Bool)

(declare-fun e!253325 () Bool)

(declare-fun e!253330 () Bool)

(assert (=> b!427212 (= e!253325 e!253330)))

(declare-fun res!250641 () Bool)

(assert (=> b!427212 (=> (not res!250641) (not e!253330))))

(declare-datatypes ((array!26121 0))(
  ( (array!26122 (arr!12507 (Array (_ BitVec 32) (_ BitVec 64))) (size!12859 (_ BitVec 32))) )
))
(declare-fun lt!195240 () array!26121)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26121 (_ BitVec 32)) Bool)

(assert (=> b!427212 (= res!250641 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!195240 mask!1025))))

(declare-fun _keys!709 () array!26121)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!427212 (= lt!195240 (array!26122 (store (arr!12507 _keys!709) i!563 k0!794) (size!12859 _keys!709)))))

(declare-fun b!427213 () Bool)

(declare-fun res!250651 () Bool)

(assert (=> b!427213 (=> (not res!250651) (not e!253325))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!427213 (= res!250651 (validKeyInArray!0 k0!794))))

(declare-fun b!427214 () Bool)

(declare-fun res!250640 () Bool)

(assert (=> b!427214 (=> (not res!250640) (not e!253330))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!427214 (= res!250640 (bvsle from!863 i!563))))

(declare-fun b!427215 () Bool)

(declare-fun e!253327 () Bool)

(declare-fun e!253323 () Bool)

(assert (=> b!427215 (= e!253327 (not e!253323))))

(declare-fun res!250652 () Bool)

(assert (=> b!427215 (=> res!250652 e!253323)))

(assert (=> b!427215 (= res!250652 (not (validKeyInArray!0 (select (arr!12507 _keys!709) from!863))))))

(declare-datatypes ((V!15973 0))(
  ( (V!15974 (val!5620 Int)) )
))
(declare-datatypes ((tuple2!7324 0))(
  ( (tuple2!7325 (_1!3672 (_ BitVec 64)) (_2!3672 V!15973)) )
))
(declare-datatypes ((List!7373 0))(
  ( (Nil!7370) (Cons!7369 (h!8225 tuple2!7324) (t!12829 List!7373)) )
))
(declare-datatypes ((ListLongMap!6251 0))(
  ( (ListLongMap!6252 (toList!3141 List!7373)) )
))
(declare-fun lt!195239 () ListLongMap!6251)

(declare-fun lt!195242 () ListLongMap!6251)

(assert (=> b!427215 (= lt!195239 lt!195242)))

(declare-fun lt!195237 () ListLongMap!6251)

(declare-fun v!412 () V!15973)

(declare-fun +!1294 (ListLongMap!6251 tuple2!7324) ListLongMap!6251)

(assert (=> b!427215 (= lt!195242 (+!1294 lt!195237 (tuple2!7325 k0!794 v!412)))))

(declare-fun minValue!515 () V!15973)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15973)

(declare-datatypes ((ValueCell!5232 0))(
  ( (ValueCellFull!5232 (v!7863 V!15973)) (EmptyCell!5232) )
))
(declare-datatypes ((array!26123 0))(
  ( (array!26124 (arr!12508 (Array (_ BitVec 32) ValueCell!5232)) (size!12860 (_ BitVec 32))) )
))
(declare-fun lt!195236 () array!26123)

(declare-fun getCurrentListMapNoExtraKeys!1342 (array!26121 array!26123 (_ BitVec 32) (_ BitVec 32) V!15973 V!15973 (_ BitVec 32) Int) ListLongMap!6251)

(assert (=> b!427215 (= lt!195239 (getCurrentListMapNoExtraKeys!1342 lt!195240 lt!195236 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun _values!549 () array!26123)

(assert (=> b!427215 (= lt!195237 (getCurrentListMapNoExtraKeys!1342 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!12491 0))(
  ( (Unit!12492) )
))
(declare-fun lt!195243 () Unit!12491)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!496 (array!26121 array!26123 (_ BitVec 32) (_ BitVec 32) V!15973 V!15973 (_ BitVec 32) (_ BitVec 64) V!15973 (_ BitVec 32) Int) Unit!12491)

(assert (=> b!427215 (= lt!195243 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!496 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!250645 () Bool)

(assert (=> start!39740 (=> (not res!250645) (not e!253325))))

(assert (=> start!39740 (= res!250645 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12859 _keys!709))))))

(assert (=> start!39740 e!253325))

(declare-fun tp_is_empty!11151 () Bool)

(assert (=> start!39740 tp_is_empty!11151))

(assert (=> start!39740 tp!35525))

(assert (=> start!39740 true))

(declare-fun e!253324 () Bool)

(declare-fun array_inv!9104 (array!26123) Bool)

(assert (=> start!39740 (and (array_inv!9104 _values!549) e!253324)))

(declare-fun array_inv!9105 (array!26121) Bool)

(assert (=> start!39740 (array_inv!9105 _keys!709)))

(declare-fun b!427216 () Bool)

(declare-fun res!250647 () Bool)

(assert (=> b!427216 (=> (not res!250647) (not e!253325))))

(declare-fun arrayContainsKey!0 (array!26121 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!427216 (= res!250647 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!427217 () Bool)

(declare-fun e!253328 () Bool)

(declare-fun mapRes!18348 () Bool)

(assert (=> b!427217 (= e!253324 (and e!253328 mapRes!18348))))

(declare-fun condMapEmpty!18348 () Bool)

(declare-fun mapDefault!18348 () ValueCell!5232)

(assert (=> b!427217 (= condMapEmpty!18348 (= (arr!12508 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5232)) mapDefault!18348)))))

(declare-fun b!427218 () Bool)

(declare-fun res!250646 () Bool)

(assert (=> b!427218 (=> (not res!250646) (not e!253330))))

(declare-datatypes ((List!7374 0))(
  ( (Nil!7371) (Cons!7370 (h!8226 (_ BitVec 64)) (t!12830 List!7374)) )
))
(declare-fun arrayNoDuplicates!0 (array!26121 (_ BitVec 32) List!7374) Bool)

(assert (=> b!427218 (= res!250646 (arrayNoDuplicates!0 lt!195240 #b00000000000000000000000000000000 Nil!7371))))

(declare-fun b!427219 () Bool)

(declare-fun res!250648 () Bool)

(assert (=> b!427219 (=> (not res!250648) (not e!253325))))

(assert (=> b!427219 (= res!250648 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12859 _keys!709))))))

(declare-fun b!427220 () Bool)

(declare-fun res!250649 () Bool)

(assert (=> b!427220 (=> (not res!250649) (not e!253325))))

(assert (=> b!427220 (= res!250649 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7371))))

(declare-fun b!427221 () Bool)

(declare-fun res!250643 () Bool)

(assert (=> b!427221 (=> (not res!250643) (not e!253325))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!427221 (= res!250643 (validMask!0 mask!1025))))

(declare-fun b!427222 () Bool)

(assert (=> b!427222 (= e!253328 tp_is_empty!11151)))

(declare-fun b!427223 () Bool)

(assert (=> b!427223 (= e!253330 e!253327)))

(declare-fun res!250642 () Bool)

(assert (=> b!427223 (=> (not res!250642) (not e!253327))))

(assert (=> b!427223 (= res!250642 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!195238 () ListLongMap!6251)

(assert (=> b!427223 (= lt!195238 (getCurrentListMapNoExtraKeys!1342 lt!195240 lt!195236 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!427223 (= lt!195236 (array!26124 (store (arr!12508 _values!549) i!563 (ValueCellFull!5232 v!412)) (size!12860 _values!549)))))

(declare-fun lt!195241 () ListLongMap!6251)

(assert (=> b!427223 (= lt!195241 (getCurrentListMapNoExtraKeys!1342 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!427224 () Bool)

(declare-fun res!250644 () Bool)

(assert (=> b!427224 (=> (not res!250644) (not e!253325))))

(assert (=> b!427224 (= res!250644 (and (= (size!12860 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12859 _keys!709) (size!12860 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!427225 () Bool)

(declare-fun res!250653 () Bool)

(assert (=> b!427225 (=> (not res!250653) (not e!253325))))

(assert (=> b!427225 (= res!250653 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!18348 () Bool)

(declare-fun tp!35526 () Bool)

(declare-fun e!253329 () Bool)

(assert (=> mapNonEmpty!18348 (= mapRes!18348 (and tp!35526 e!253329))))

(declare-fun mapRest!18348 () (Array (_ BitVec 32) ValueCell!5232))

(declare-fun mapKey!18348 () (_ BitVec 32))

(declare-fun mapValue!18348 () ValueCell!5232)

(assert (=> mapNonEmpty!18348 (= (arr!12508 _values!549) (store mapRest!18348 mapKey!18348 mapValue!18348))))

(declare-fun mapIsEmpty!18348 () Bool)

(assert (=> mapIsEmpty!18348 mapRes!18348))

(declare-fun b!427226 () Bool)

(assert (=> b!427226 (= e!253323 true)))

(declare-fun get!6195 (ValueCell!5232 V!15973) V!15973)

(declare-fun dynLambda!742 (Int (_ BitVec 64)) V!15973)

(assert (=> b!427226 (= lt!195238 (+!1294 lt!195242 (tuple2!7325 (select (arr!12507 _keys!709) from!863) (get!6195 (select (arr!12508 _values!549) from!863) (dynLambda!742 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!427227 () Bool)

(declare-fun res!250650 () Bool)

(assert (=> b!427227 (=> (not res!250650) (not e!253325))))

(assert (=> b!427227 (= res!250650 (or (= (select (arr!12507 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12507 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!427228 () Bool)

(assert (=> b!427228 (= e!253329 tp_is_empty!11151)))

(assert (= (and start!39740 res!250645) b!427221))

(assert (= (and b!427221 res!250643) b!427224))

(assert (= (and b!427224 res!250644) b!427225))

(assert (= (and b!427225 res!250653) b!427220))

(assert (= (and b!427220 res!250649) b!427219))

(assert (= (and b!427219 res!250648) b!427213))

(assert (= (and b!427213 res!250651) b!427227))

(assert (= (and b!427227 res!250650) b!427216))

(assert (= (and b!427216 res!250647) b!427212))

(assert (= (and b!427212 res!250641) b!427218))

(assert (= (and b!427218 res!250646) b!427214))

(assert (= (and b!427214 res!250640) b!427223))

(assert (= (and b!427223 res!250642) b!427215))

(assert (= (and b!427215 (not res!250652)) b!427226))

(assert (= (and b!427217 condMapEmpty!18348) mapIsEmpty!18348))

(assert (= (and b!427217 (not condMapEmpty!18348)) mapNonEmpty!18348))

(get-info :version)

(assert (= (and mapNonEmpty!18348 ((_ is ValueCellFull!5232) mapValue!18348)) b!427228))

(assert (= (and b!427217 ((_ is ValueCellFull!5232) mapDefault!18348)) b!427222))

(assert (= start!39740 b!427217))

(declare-fun b_lambda!9117 () Bool)

(assert (=> (not b_lambda!9117) (not b!427226)))

(declare-fun t!12828 () Bool)

(declare-fun tb!3413 () Bool)

(assert (=> (and start!39740 (= defaultEntry!557 defaultEntry!557) t!12828) tb!3413))

(declare-fun result!6345 () Bool)

(assert (=> tb!3413 (= result!6345 tp_is_empty!11151)))

(assert (=> b!427226 t!12828))

(declare-fun b_and!17677 () Bool)

(assert (= b_and!17675 (and (=> t!12828 result!6345) b_and!17677)))

(declare-fun m!415749 () Bool)

(assert (=> b!427216 m!415749))

(declare-fun m!415751 () Bool)

(assert (=> b!427218 m!415751))

(declare-fun m!415753 () Bool)

(assert (=> b!427221 m!415753))

(declare-fun m!415755 () Bool)

(assert (=> b!427220 m!415755))

(declare-fun m!415757 () Bool)

(assert (=> start!39740 m!415757))

(declare-fun m!415759 () Bool)

(assert (=> start!39740 m!415759))

(declare-fun m!415761 () Bool)

(assert (=> b!427226 m!415761))

(declare-fun m!415763 () Bool)

(assert (=> b!427226 m!415763))

(declare-fun m!415765 () Bool)

(assert (=> b!427226 m!415765))

(declare-fun m!415767 () Bool)

(assert (=> b!427226 m!415767))

(assert (=> b!427226 m!415767))

(assert (=> b!427226 m!415765))

(declare-fun m!415769 () Bool)

(assert (=> b!427226 m!415769))

(declare-fun m!415771 () Bool)

(assert (=> b!427225 m!415771))

(declare-fun m!415773 () Bool)

(assert (=> mapNonEmpty!18348 m!415773))

(declare-fun m!415775 () Bool)

(assert (=> b!427212 m!415775))

(declare-fun m!415777 () Bool)

(assert (=> b!427212 m!415777))

(declare-fun m!415779 () Bool)

(assert (=> b!427223 m!415779))

(declare-fun m!415781 () Bool)

(assert (=> b!427223 m!415781))

(declare-fun m!415783 () Bool)

(assert (=> b!427223 m!415783))

(declare-fun m!415785 () Bool)

(assert (=> b!427213 m!415785))

(assert (=> b!427215 m!415761))

(declare-fun m!415787 () Bool)

(assert (=> b!427215 m!415787))

(declare-fun m!415789 () Bool)

(assert (=> b!427215 m!415789))

(declare-fun m!415791 () Bool)

(assert (=> b!427215 m!415791))

(assert (=> b!427215 m!415761))

(declare-fun m!415793 () Bool)

(assert (=> b!427215 m!415793))

(declare-fun m!415795 () Bool)

(assert (=> b!427215 m!415795))

(declare-fun m!415797 () Bool)

(assert (=> b!427227 m!415797))

(check-sat (not b!427218) (not b!427223) (not start!39740) (not b!427221) b_and!17677 (not b_lambda!9117) tp_is_empty!11151 (not b!427215) (not b!427220) (not b!427225) (not b!427213) (not b!427212) (not b!427226) (not b!427216) (not b_next!9999) (not mapNonEmpty!18348))
(check-sat b_and!17677 (not b_next!9999))
