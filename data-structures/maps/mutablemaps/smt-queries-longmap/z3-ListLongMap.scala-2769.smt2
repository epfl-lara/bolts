; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40476 () Bool)

(assert start!40476)

(declare-fun b_free!10539 () Bool)

(declare-fun b_next!10539 () Bool)

(assert (=> start!40476 (= b_free!10539 (not b_next!10539))))

(declare-fun tp!37395 () Bool)

(declare-fun b_and!18541 () Bool)

(assert (=> start!40476 (= tp!37395 b_and!18541)))

(declare-datatypes ((array!27475 0))(
  ( (array!27476 (arr!13182 (Array (_ BitVec 32) (_ BitVec 64))) (size!13534 (_ BitVec 32))) )
))
(declare-fun lt!203604 () array!27475)

(declare-datatypes ((V!16909 0))(
  ( (V!16910 (val!5971 Int)) )
))
(declare-fun minValue!515 () V!16909)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5583 0))(
  ( (ValueCellFull!5583 (v!8218 V!16909)) (EmptyCell!5583) )
))
(declare-datatypes ((array!27477 0))(
  ( (array!27478 (arr!13183 (Array (_ BitVec 32) ValueCell!5583)) (size!13535 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27477)

(declare-fun zeroValue!515 () V!16909)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun bm!29567 () Bool)

(declare-fun v!412 () V!16909)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun _keys!709 () array!27475)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun c!55779 () Bool)

(declare-datatypes ((tuple2!7762 0))(
  ( (tuple2!7763 (_1!3891 (_ BitVec 64)) (_2!3891 V!16909)) )
))
(declare-datatypes ((List!7863 0))(
  ( (Nil!7860) (Cons!7859 (h!8715 tuple2!7762) (t!13629 List!7863)) )
))
(declare-datatypes ((ListLongMap!6689 0))(
  ( (ListLongMap!6690 (toList!3360 List!7863)) )
))
(declare-fun call!29571 () ListLongMap!6689)

(declare-fun getCurrentListMapNoExtraKeys!1542 (array!27475 array!27477 (_ BitVec 32) (_ BitVec 32) V!16909 V!16909 (_ BitVec 32) Int) ListLongMap!6689)

(assert (=> bm!29567 (= call!29571 (getCurrentListMapNoExtraKeys!1542 (ite c!55779 _keys!709 lt!203604) (ite c!55779 _values!549 (array!27478 (store (arr!13183 _values!549) i!563 (ValueCellFull!5583 v!412)) (size!13535 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!445306 () Bool)

(declare-fun e!261748 () Bool)

(declare-fun tp_is_empty!11853 () Bool)

(assert (=> b!445306 (= e!261748 tp_is_empty!11853)))

(declare-fun b!445307 () Bool)

(declare-fun res!264307 () Bool)

(declare-fun e!261750 () Bool)

(assert (=> b!445307 (=> (not res!264307) (not e!261750))))

(declare-datatypes ((List!7864 0))(
  ( (Nil!7861) (Cons!7860 (h!8716 (_ BitVec 64)) (t!13630 List!7864)) )
))
(declare-fun arrayNoDuplicates!0 (array!27475 (_ BitVec 32) List!7864) Bool)

(assert (=> b!445307 (= res!264307 (arrayNoDuplicates!0 lt!203604 #b00000000000000000000000000000000 Nil!7861))))

(declare-fun b!445308 () Bool)

(declare-fun e!261749 () Bool)

(declare-fun mapRes!19407 () Bool)

(assert (=> b!445308 (= e!261749 (and e!261748 mapRes!19407))))

(declare-fun condMapEmpty!19407 () Bool)

(declare-fun mapDefault!19407 () ValueCell!5583)

(assert (=> b!445308 (= condMapEmpty!19407 (= (arr!13183 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5583)) mapDefault!19407)))))

(declare-fun res!264313 () Bool)

(declare-fun e!261751 () Bool)

(assert (=> start!40476 (=> (not res!264313) (not e!261751))))

(assert (=> start!40476 (= res!264313 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13534 _keys!709))))))

(assert (=> start!40476 e!261751))

(assert (=> start!40476 tp_is_empty!11853))

(assert (=> start!40476 tp!37395))

(assert (=> start!40476 true))

(declare-fun array_inv!9550 (array!27477) Bool)

(assert (=> start!40476 (and (array_inv!9550 _values!549) e!261749)))

(declare-fun array_inv!9551 (array!27475) Bool)

(assert (=> start!40476 (array_inv!9551 _keys!709)))

(declare-fun b!445309 () Bool)

(declare-fun res!264306 () Bool)

(assert (=> b!445309 (=> (not res!264306) (not e!261751))))

(assert (=> b!445309 (= res!264306 (and (= (size!13535 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13534 _keys!709) (size!13535 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!445310 () Bool)

(assert (=> b!445310 (= e!261751 e!261750)))

(declare-fun res!264305 () Bool)

(assert (=> b!445310 (=> (not res!264305) (not e!261750))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27475 (_ BitVec 32)) Bool)

(assert (=> b!445310 (= res!264305 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203604 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!445310 (= lt!203604 (array!27476 (store (arr!13182 _keys!709) i!563 k0!794) (size!13534 _keys!709)))))

(declare-fun b!445311 () Bool)

(declare-fun res!264316 () Bool)

(assert (=> b!445311 (=> (not res!264316) (not e!261751))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!445311 (= res!264316 (validKeyInArray!0 k0!794))))

(declare-fun b!445312 () Bool)

(declare-fun e!261752 () Bool)

(declare-fun call!29570 () ListLongMap!6689)

(assert (=> b!445312 (= e!261752 (= call!29571 call!29570))))

(declare-fun b!445313 () Bool)

(declare-fun res!264312 () Bool)

(assert (=> b!445313 (=> (not res!264312) (not e!261750))))

(assert (=> b!445313 (= res!264312 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!13534 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!445314 () Bool)

(declare-fun res!264315 () Bool)

(assert (=> b!445314 (=> (not res!264315) (not e!261751))))

(assert (=> b!445314 (= res!264315 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7861))))

(declare-fun b!445315 () Bool)

(declare-fun res!264314 () Bool)

(assert (=> b!445315 (=> (not res!264314) (not e!261751))))

(assert (=> b!445315 (= res!264314 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13534 _keys!709))))))

(declare-fun b!445316 () Bool)

(declare-fun res!264309 () Bool)

(assert (=> b!445316 (=> (not res!264309) (not e!261751))))

(assert (=> b!445316 (= res!264309 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!445317 () Bool)

(declare-fun res!264308 () Bool)

(assert (=> b!445317 (=> (not res!264308) (not e!261751))))

(assert (=> b!445317 (= res!264308 (or (= (select (arr!13182 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13182 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!445318 () Bool)

(declare-fun res!264311 () Bool)

(assert (=> b!445318 (=> (not res!264311) (not e!261751))))

(declare-fun arrayContainsKey!0 (array!27475 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!445318 (= res!264311 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!19407 () Bool)

(declare-fun tp!37394 () Bool)

(declare-fun e!261753 () Bool)

(assert (=> mapNonEmpty!19407 (= mapRes!19407 (and tp!37394 e!261753))))

(declare-fun mapValue!19407 () ValueCell!5583)

(declare-fun mapRest!19407 () (Array (_ BitVec 32) ValueCell!5583))

(declare-fun mapKey!19407 () (_ BitVec 32))

(assert (=> mapNonEmpty!19407 (= (arr!13183 _values!549) (store mapRest!19407 mapKey!19407 mapValue!19407))))

(declare-fun mapIsEmpty!19407 () Bool)

(assert (=> mapIsEmpty!19407 mapRes!19407))

(declare-fun b!445319 () Bool)

(declare-fun +!1492 (ListLongMap!6689 tuple2!7762) ListLongMap!6689)

(assert (=> b!445319 (= e!261752 (= call!29570 (+!1492 call!29571 (tuple2!7763 k0!794 v!412))))))

(declare-fun bm!29568 () Bool)

(assert (=> bm!29568 (= call!29570 (getCurrentListMapNoExtraKeys!1542 (ite c!55779 lt!203604 _keys!709) (ite c!55779 (array!27478 (store (arr!13183 _values!549) i!563 (ValueCellFull!5583 v!412)) (size!13535 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!445320 () Bool)

(declare-fun res!264310 () Bool)

(assert (=> b!445320 (=> (not res!264310) (not e!261751))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!445320 (= res!264310 (validMask!0 mask!1025))))

(declare-fun b!445321 () Bool)

(assert (=> b!445321 (= e!261750 (not true))))

(assert (=> b!445321 e!261752))

(assert (=> b!445321 (= c!55779 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!13099 0))(
  ( (Unit!13100) )
))
(declare-fun lt!203603 () Unit!13099)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!669 (array!27475 array!27477 (_ BitVec 32) (_ BitVec 32) V!16909 V!16909 (_ BitVec 32) (_ BitVec 64) V!16909 (_ BitVec 32) Int) Unit!13099)

(assert (=> b!445321 (= lt!203603 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!669 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!445322 () Bool)

(assert (=> b!445322 (= e!261753 tp_is_empty!11853)))

(assert (= (and start!40476 res!264313) b!445320))

(assert (= (and b!445320 res!264310) b!445309))

(assert (= (and b!445309 res!264306) b!445316))

(assert (= (and b!445316 res!264309) b!445314))

(assert (= (and b!445314 res!264315) b!445315))

(assert (= (and b!445315 res!264314) b!445311))

(assert (= (and b!445311 res!264316) b!445317))

(assert (= (and b!445317 res!264308) b!445318))

(assert (= (and b!445318 res!264311) b!445310))

(assert (= (and b!445310 res!264305) b!445307))

(assert (= (and b!445307 res!264307) b!445313))

(assert (= (and b!445313 res!264312) b!445321))

(assert (= (and b!445321 c!55779) b!445319))

(assert (= (and b!445321 (not c!55779)) b!445312))

(assert (= (or b!445319 b!445312) bm!29568))

(assert (= (or b!445319 b!445312) bm!29567))

(assert (= (and b!445308 condMapEmpty!19407) mapIsEmpty!19407))

(assert (= (and b!445308 (not condMapEmpty!19407)) mapNonEmpty!19407))

(get-info :version)

(assert (= (and mapNonEmpty!19407 ((_ is ValueCellFull!5583) mapValue!19407)) b!445322))

(assert (= (and b!445308 ((_ is ValueCellFull!5583) mapDefault!19407)) b!445306))

(assert (= start!40476 b!445308))

(declare-fun m!430809 () Bool)

(assert (=> b!445320 m!430809))

(declare-fun m!430811 () Bool)

(assert (=> b!445319 m!430811))

(declare-fun m!430813 () Bool)

(assert (=> b!445317 m!430813))

(declare-fun m!430815 () Bool)

(assert (=> start!40476 m!430815))

(declare-fun m!430817 () Bool)

(assert (=> start!40476 m!430817))

(declare-fun m!430819 () Bool)

(assert (=> b!445316 m!430819))

(declare-fun m!430821 () Bool)

(assert (=> b!445314 m!430821))

(declare-fun m!430823 () Bool)

(assert (=> b!445321 m!430823))

(declare-fun m!430825 () Bool)

(assert (=> b!445307 m!430825))

(declare-fun m!430827 () Bool)

(assert (=> b!445311 m!430827))

(declare-fun m!430829 () Bool)

(assert (=> b!445318 m!430829))

(declare-fun m!430831 () Bool)

(assert (=> b!445310 m!430831))

(declare-fun m!430833 () Bool)

(assert (=> b!445310 m!430833))

(declare-fun m!430835 () Bool)

(assert (=> mapNonEmpty!19407 m!430835))

(declare-fun m!430837 () Bool)

(assert (=> bm!29567 m!430837))

(declare-fun m!430839 () Bool)

(assert (=> bm!29567 m!430839))

(assert (=> bm!29568 m!430837))

(declare-fun m!430841 () Bool)

(assert (=> bm!29568 m!430841))

(check-sat (not b!445320) (not b!445307) (not b_next!10539) (not b!445321) (not b!445319) (not mapNonEmpty!19407) (not b!445311) (not b!445310) tp_is_empty!11853 b_and!18541 (not b!445314) (not b!445316) (not bm!29567) (not b!445318) (not bm!29568) (not start!40476))
(check-sat b_and!18541 (not b_next!10539))
