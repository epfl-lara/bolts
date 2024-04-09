; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20486 () Bool)

(assert start!20486)

(declare-fun b_free!5133 () Bool)

(declare-fun b_next!5133 () Bool)

(assert (=> start!20486 (= b_free!5133 (not b_next!5133))))

(declare-fun tp!18431 () Bool)

(declare-fun b_and!11897 () Bool)

(assert (=> start!20486 (= tp!18431 b_and!11897)))

(declare-fun b!202988 () Bool)

(declare-fun res!97447 () Bool)

(declare-fun e!132928 () Bool)

(assert (=> b!202988 (=> (not res!97447) (not e!132928))))

(declare-datatypes ((array!9202 0))(
  ( (array!9203 (arr!4351 (Array (_ BitVec 32) (_ BitVec 64))) (size!4676 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9202)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6299 0))(
  ( (V!6300 (val!2539 Int)) )
))
(declare-datatypes ((ValueCell!2151 0))(
  ( (ValueCellFull!2151 (v!4505 V!6299)) (EmptyCell!2151) )
))
(declare-datatypes ((array!9204 0))(
  ( (array!9205 (arr!4352 (Array (_ BitVec 32) ValueCell!2151)) (size!4677 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9204)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!202988 (= res!97447 (and (= (size!4677 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4676 _keys!825) (size!4677 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!202989 () Bool)

(declare-fun res!97443 () Bool)

(assert (=> b!202989 (=> (not res!97443) (not e!132928))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!202989 (= res!97443 (= (select (arr!4351 _keys!825) i!601) k0!843))))

(declare-fun mapIsEmpty!8552 () Bool)

(declare-fun mapRes!8552 () Bool)

(assert (=> mapIsEmpty!8552 mapRes!8552))

(declare-fun b!202990 () Bool)

(declare-fun e!132930 () Bool)

(assert (=> b!202990 (= e!132930 true)))

(declare-datatypes ((tuple2!3846 0))(
  ( (tuple2!3847 (_1!1933 (_ BitVec 64)) (_2!1933 V!6299)) )
))
(declare-datatypes ((List!2774 0))(
  ( (Nil!2771) (Cons!2770 (h!3412 tuple2!3846) (t!7713 List!2774)) )
))
(declare-datatypes ((ListLongMap!2773 0))(
  ( (ListLongMap!2774 (toList!1402 List!2774)) )
))
(declare-fun lt!102230 () ListLongMap!2773)

(declare-fun lt!102234 () ListLongMap!2773)

(declare-fun lt!102239 () tuple2!3846)

(declare-fun +!419 (ListLongMap!2773 tuple2!3846) ListLongMap!2773)

(assert (=> b!202990 (= lt!102230 (+!419 lt!102234 lt!102239))))

(declare-fun lt!102231 () ListLongMap!2773)

(declare-fun v!520 () V!6299)

(declare-fun zeroValue!615 () V!6299)

(declare-datatypes ((Unit!6139 0))(
  ( (Unit!6140) )
))
(declare-fun lt!102237 () Unit!6139)

(declare-fun addCommutativeForDiffKeys!135 (ListLongMap!2773 (_ BitVec 64) V!6299 (_ BitVec 64) V!6299) Unit!6139)

(assert (=> b!202990 (= lt!102237 (addCommutativeForDiffKeys!135 lt!102231 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!202991 () Bool)

(declare-fun res!97449 () Bool)

(assert (=> b!202991 (=> (not res!97449) (not e!132928))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9202 (_ BitVec 32)) Bool)

(assert (=> b!202991 (= res!97449 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!202992 () Bool)

(declare-fun e!132931 () Bool)

(assert (=> b!202992 (= e!132928 (not e!132931))))

(declare-fun res!97444 () Bool)

(assert (=> b!202992 (=> res!97444 e!132931)))

(assert (=> b!202992 (= res!97444 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!102236 () ListLongMap!2773)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6299)

(declare-fun getCurrentListMap!975 (array!9202 array!9204 (_ BitVec 32) (_ BitVec 32) V!6299 V!6299 (_ BitVec 32) Int) ListLongMap!2773)

(assert (=> b!202992 (= lt!102236 (getCurrentListMap!975 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!102233 () array!9204)

(declare-fun lt!102240 () ListLongMap!2773)

(assert (=> b!202992 (= lt!102240 (getCurrentListMap!975 _keys!825 lt!102233 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!102238 () ListLongMap!2773)

(declare-fun lt!102232 () ListLongMap!2773)

(assert (=> b!202992 (and (= lt!102238 lt!102232) (= lt!102232 lt!102238))))

(assert (=> b!202992 (= lt!102232 (+!419 lt!102231 lt!102239))))

(assert (=> b!202992 (= lt!102239 (tuple2!3847 k0!843 v!520))))

(declare-fun lt!102241 () Unit!6139)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!88 (array!9202 array!9204 (_ BitVec 32) (_ BitVec 32) V!6299 V!6299 (_ BitVec 32) (_ BitVec 64) V!6299 (_ BitVec 32) Int) Unit!6139)

(assert (=> b!202992 (= lt!102241 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!88 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!346 (array!9202 array!9204 (_ BitVec 32) (_ BitVec 32) V!6299 V!6299 (_ BitVec 32) Int) ListLongMap!2773)

(assert (=> b!202992 (= lt!102238 (getCurrentListMapNoExtraKeys!346 _keys!825 lt!102233 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!202992 (= lt!102233 (array!9205 (store (arr!4352 _values!649) i!601 (ValueCellFull!2151 v!520)) (size!4677 _values!649)))))

(assert (=> b!202992 (= lt!102231 (getCurrentListMapNoExtraKeys!346 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!202993 () Bool)

(declare-fun e!132927 () Bool)

(declare-fun e!132926 () Bool)

(assert (=> b!202993 (= e!132927 (and e!132926 mapRes!8552))))

(declare-fun condMapEmpty!8552 () Bool)

(declare-fun mapDefault!8552 () ValueCell!2151)

(assert (=> b!202993 (= condMapEmpty!8552 (= (arr!4352 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2151)) mapDefault!8552)))))

(declare-fun mapNonEmpty!8552 () Bool)

(declare-fun tp!18430 () Bool)

(declare-fun e!132929 () Bool)

(assert (=> mapNonEmpty!8552 (= mapRes!8552 (and tp!18430 e!132929))))

(declare-fun mapKey!8552 () (_ BitVec 32))

(declare-fun mapValue!8552 () ValueCell!2151)

(declare-fun mapRest!8552 () (Array (_ BitVec 32) ValueCell!2151))

(assert (=> mapNonEmpty!8552 (= (arr!4352 _values!649) (store mapRest!8552 mapKey!8552 mapValue!8552))))

(declare-fun res!97446 () Bool)

(assert (=> start!20486 (=> (not res!97446) (not e!132928))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20486 (= res!97446 (validMask!0 mask!1149))))

(assert (=> start!20486 e!132928))

(declare-fun array_inv!2865 (array!9204) Bool)

(assert (=> start!20486 (and (array_inv!2865 _values!649) e!132927)))

(assert (=> start!20486 true))

(declare-fun tp_is_empty!4989 () Bool)

(assert (=> start!20486 tp_is_empty!4989))

(declare-fun array_inv!2866 (array!9202) Bool)

(assert (=> start!20486 (array_inv!2866 _keys!825)))

(assert (=> start!20486 tp!18431))

(declare-fun b!202987 () Bool)

(declare-fun res!97445 () Bool)

(assert (=> b!202987 (=> (not res!97445) (not e!132928))))

(declare-datatypes ((List!2775 0))(
  ( (Nil!2772) (Cons!2771 (h!3413 (_ BitVec 64)) (t!7714 List!2775)) )
))
(declare-fun arrayNoDuplicates!0 (array!9202 (_ BitVec 32) List!2775) Bool)

(assert (=> b!202987 (= res!97445 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2772))))

(declare-fun b!202994 () Bool)

(assert (=> b!202994 (= e!132926 tp_is_empty!4989)))

(declare-fun b!202995 () Bool)

(declare-fun res!97448 () Bool)

(assert (=> b!202995 (=> (not res!97448) (not e!132928))))

(assert (=> b!202995 (= res!97448 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4676 _keys!825))))))

(declare-fun b!202996 () Bool)

(assert (=> b!202996 (= e!132931 e!132930)))

(declare-fun res!97450 () Bool)

(assert (=> b!202996 (=> res!97450 e!132930)))

(assert (=> b!202996 (= res!97450 (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!202996 (= lt!102240 lt!102230)))

(declare-fun lt!102235 () tuple2!3846)

(assert (=> b!202996 (= lt!102230 (+!419 lt!102232 lt!102235))))

(assert (=> b!202996 (= lt!102236 lt!102234)))

(assert (=> b!202996 (= lt!102234 (+!419 lt!102231 lt!102235))))

(assert (=> b!202996 (= lt!102240 (+!419 lt!102238 lt!102235))))

(assert (=> b!202996 (= lt!102235 (tuple2!3847 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!202997 () Bool)

(declare-fun res!97442 () Bool)

(assert (=> b!202997 (=> (not res!97442) (not e!132928))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!202997 (= res!97442 (validKeyInArray!0 k0!843))))

(declare-fun b!202998 () Bool)

(assert (=> b!202998 (= e!132929 tp_is_empty!4989)))

(assert (= (and start!20486 res!97446) b!202988))

(assert (= (and b!202988 res!97447) b!202991))

(assert (= (and b!202991 res!97449) b!202987))

(assert (= (and b!202987 res!97445) b!202995))

(assert (= (and b!202995 res!97448) b!202997))

(assert (= (and b!202997 res!97442) b!202989))

(assert (= (and b!202989 res!97443) b!202992))

(assert (= (and b!202992 (not res!97444)) b!202996))

(assert (= (and b!202996 (not res!97450)) b!202990))

(assert (= (and b!202993 condMapEmpty!8552) mapIsEmpty!8552))

(assert (= (and b!202993 (not condMapEmpty!8552)) mapNonEmpty!8552))

(get-info :version)

(assert (= (and mapNonEmpty!8552 ((_ is ValueCellFull!2151) mapValue!8552)) b!202998))

(assert (= (and b!202993 ((_ is ValueCellFull!2151) mapDefault!8552)) b!202994))

(assert (= start!20486 b!202993))

(declare-fun m!230389 () Bool)

(assert (=> b!202996 m!230389))

(declare-fun m!230391 () Bool)

(assert (=> b!202996 m!230391))

(declare-fun m!230393 () Bool)

(assert (=> b!202996 m!230393))

(declare-fun m!230395 () Bool)

(assert (=> start!20486 m!230395))

(declare-fun m!230397 () Bool)

(assert (=> start!20486 m!230397))

(declare-fun m!230399 () Bool)

(assert (=> start!20486 m!230399))

(declare-fun m!230401 () Bool)

(assert (=> b!202990 m!230401))

(declare-fun m!230403 () Bool)

(assert (=> b!202990 m!230403))

(declare-fun m!230405 () Bool)

(assert (=> b!202992 m!230405))

(declare-fun m!230407 () Bool)

(assert (=> b!202992 m!230407))

(declare-fun m!230409 () Bool)

(assert (=> b!202992 m!230409))

(declare-fun m!230411 () Bool)

(assert (=> b!202992 m!230411))

(declare-fun m!230413 () Bool)

(assert (=> b!202992 m!230413))

(declare-fun m!230415 () Bool)

(assert (=> b!202992 m!230415))

(declare-fun m!230417 () Bool)

(assert (=> b!202992 m!230417))

(declare-fun m!230419 () Bool)

(assert (=> b!202989 m!230419))

(declare-fun m!230421 () Bool)

(assert (=> b!202991 m!230421))

(declare-fun m!230423 () Bool)

(assert (=> b!202997 m!230423))

(declare-fun m!230425 () Bool)

(assert (=> b!202987 m!230425))

(declare-fun m!230427 () Bool)

(assert (=> mapNonEmpty!8552 m!230427))

(check-sat (not b!202996) b_and!11897 (not mapNonEmpty!8552) (not b!202991) (not b!202992) (not b!202987) (not b_next!5133) (not b!202990) (not b!202997) tp_is_empty!4989 (not start!20486))
(check-sat b_and!11897 (not b_next!5133))
