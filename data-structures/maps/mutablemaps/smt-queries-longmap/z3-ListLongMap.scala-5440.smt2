; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72454 () Bool)

(assert start!72454)

(declare-fun b_free!13611 () Bool)

(declare-fun b_next!13611 () Bool)

(assert (=> start!72454 (= b_free!13611 (not b_next!13611))))

(declare-fun tp!47932 () Bool)

(declare-fun b_and!22715 () Bool)

(assert (=> start!72454 (= tp!47932 b_and!22715)))

(declare-fun b!839576 () Bool)

(declare-fun e!468559 () Bool)

(declare-fun tp_is_empty!15477 () Bool)

(assert (=> b!839576 (= e!468559 tp_is_empty!15477)))

(declare-fun b!839577 () Bool)

(declare-fun res!570938 () Bool)

(declare-fun e!468563 () Bool)

(assert (=> b!839577 (=> (not res!570938) (not e!468563))))

(declare-datatypes ((array!47206 0))(
  ( (array!47207 (arr!22630 (Array (_ BitVec 32) (_ BitVec 64))) (size!23071 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47206)

(declare-datatypes ((List!16163 0))(
  ( (Nil!16160) (Cons!16159 (h!17290 (_ BitVec 64)) (t!22542 List!16163)) )
))
(declare-fun arrayNoDuplicates!0 (array!47206 (_ BitVec 32) List!16163) Bool)

(assert (=> b!839577 (= res!570938 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16160))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((V!25683 0))(
  ( (V!25684 (val!7786 Int)) )
))
(declare-datatypes ((tuple2!10332 0))(
  ( (tuple2!10333 (_1!5176 (_ BitVec 64)) (_2!5176 V!25683)) )
))
(declare-datatypes ((List!16164 0))(
  ( (Nil!16161) (Cons!16160 (h!17291 tuple2!10332) (t!22543 List!16164)) )
))
(declare-datatypes ((ListLongMap!9115 0))(
  ( (ListLongMap!9116 (toList!4573 List!16164)) )
))
(declare-fun call!37067 () ListLongMap!9115)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7299 0))(
  ( (ValueCellFull!7299 (v!10207 V!25683)) (EmptyCell!7299) )
))
(declare-datatypes ((array!47208 0))(
  ( (array!47209 (arr!22631 (Array (_ BitVec 32) ValueCell!7299)) (size!23072 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47208)

(declare-fun minValue!654 () V!25683)

(declare-fun zeroValue!654 () V!25683)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun bm!37063 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2565 (array!47206 array!47208 (_ BitVec 32) (_ BitVec 32) V!25683 V!25683 (_ BitVec 32) Int) ListLongMap!9115)

(assert (=> bm!37063 (= call!37067 (getCurrentListMapNoExtraKeys!2565 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839579 () Bool)

(declare-fun res!570939 () Bool)

(assert (=> b!839579 (=> (not res!570939) (not e!468563))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!839579 (= res!570939 (validKeyInArray!0 k0!854))))

(declare-fun b!839580 () Bool)

(declare-fun e!468564 () Bool)

(assert (=> b!839580 (= e!468564 tp_is_empty!15477)))

(declare-fun b!839581 () Bool)

(declare-fun res!570937 () Bool)

(assert (=> b!839581 (=> (not res!570937) (not e!468563))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!839581 (= res!570937 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23071 _keys!868))))))

(declare-fun b!839582 () Bool)

(declare-fun res!570935 () Bool)

(assert (=> b!839582 (=> (not res!570935) (not e!468563))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47206 (_ BitVec 32)) Bool)

(assert (=> b!839582 (= res!570935 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun v!557 () V!25683)

(declare-fun call!37066 () ListLongMap!9115)

(declare-fun b!839583 () Bool)

(declare-fun e!468562 () Bool)

(declare-fun +!1989 (ListLongMap!9115 tuple2!10332) ListLongMap!9115)

(assert (=> b!839583 (= e!468562 (= call!37066 (+!1989 call!37067 (tuple2!10333 k0!854 v!557))))))

(declare-fun b!839584 () Bool)

(declare-fun res!570940 () Bool)

(assert (=> b!839584 (=> (not res!570940) (not e!468563))))

(assert (=> b!839584 (= res!570940 (and (= (select (arr!22630 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23071 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!24815 () Bool)

(declare-fun mapRes!24815 () Bool)

(assert (=> mapIsEmpty!24815 mapRes!24815))

(declare-fun mapNonEmpty!24815 () Bool)

(declare-fun tp!47933 () Bool)

(assert (=> mapNonEmpty!24815 (= mapRes!24815 (and tp!47933 e!468564))))

(declare-fun mapKey!24815 () (_ BitVec 32))

(declare-fun mapRest!24815 () (Array (_ BitVec 32) ValueCell!7299))

(declare-fun mapValue!24815 () ValueCell!7299)

(assert (=> mapNonEmpty!24815 (= (arr!22631 _values!688) (store mapRest!24815 mapKey!24815 mapValue!24815))))

(declare-fun b!839578 () Bool)

(declare-fun e!468561 () Bool)

(assert (=> b!839578 (= e!468561 (and e!468559 mapRes!24815))))

(declare-fun condMapEmpty!24815 () Bool)

(declare-fun mapDefault!24815 () ValueCell!7299)

(assert (=> b!839578 (= condMapEmpty!24815 (= (arr!22631 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7299)) mapDefault!24815)))))

(declare-fun res!570942 () Bool)

(assert (=> start!72454 (=> (not res!570942) (not e!468563))))

(assert (=> start!72454 (= res!570942 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23071 _keys!868))))))

(assert (=> start!72454 e!468563))

(assert (=> start!72454 tp_is_empty!15477))

(assert (=> start!72454 true))

(assert (=> start!72454 tp!47932))

(declare-fun array_inv!17996 (array!47206) Bool)

(assert (=> start!72454 (array_inv!17996 _keys!868)))

(declare-fun array_inv!17997 (array!47208) Bool)

(assert (=> start!72454 (and (array_inv!17997 _values!688) e!468561)))

(declare-fun b!839585 () Bool)

(assert (=> b!839585 (= e!468563 (not true))))

(assert (=> b!839585 e!468562))

(declare-fun c!91194 () Bool)

(assert (=> b!839585 (= c!91194 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28836 0))(
  ( (Unit!28837) )
))
(declare-fun lt!380727 () Unit!28836)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!267 (array!47206 array!47208 (_ BitVec 32) (_ BitVec 32) V!25683 V!25683 (_ BitVec 32) (_ BitVec 64) V!25683 (_ BitVec 32) Int) Unit!28836)

(assert (=> b!839585 (= lt!380727 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!267 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839586 () Bool)

(declare-fun res!570936 () Bool)

(assert (=> b!839586 (=> (not res!570936) (not e!468563))))

(assert (=> b!839586 (= res!570936 (and (= (size!23072 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23071 _keys!868) (size!23072 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun bm!37064 () Bool)

(assert (=> bm!37064 (= call!37066 (getCurrentListMapNoExtraKeys!2565 _keys!868 (array!47209 (store (arr!22631 _values!688) i!612 (ValueCellFull!7299 v!557)) (size!23072 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839587 () Bool)

(assert (=> b!839587 (= e!468562 (= call!37066 call!37067))))

(declare-fun b!839588 () Bool)

(declare-fun res!570941 () Bool)

(assert (=> b!839588 (=> (not res!570941) (not e!468563))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!839588 (= res!570941 (validMask!0 mask!1196))))

(assert (= (and start!72454 res!570942) b!839588))

(assert (= (and b!839588 res!570941) b!839586))

(assert (= (and b!839586 res!570936) b!839582))

(assert (= (and b!839582 res!570935) b!839577))

(assert (= (and b!839577 res!570938) b!839581))

(assert (= (and b!839581 res!570937) b!839579))

(assert (= (and b!839579 res!570939) b!839584))

(assert (= (and b!839584 res!570940) b!839585))

(assert (= (and b!839585 c!91194) b!839583))

(assert (= (and b!839585 (not c!91194)) b!839587))

(assert (= (or b!839583 b!839587) bm!37064))

(assert (= (or b!839583 b!839587) bm!37063))

(assert (= (and b!839578 condMapEmpty!24815) mapIsEmpty!24815))

(assert (= (and b!839578 (not condMapEmpty!24815)) mapNonEmpty!24815))

(get-info :version)

(assert (= (and mapNonEmpty!24815 ((_ is ValueCellFull!7299) mapValue!24815)) b!839580))

(assert (= (and b!839578 ((_ is ValueCellFull!7299) mapDefault!24815)) b!839576))

(assert (= start!72454 b!839578))

(declare-fun m!783697 () Bool)

(assert (=> b!839582 m!783697))

(declare-fun m!783699 () Bool)

(assert (=> b!839585 m!783699))

(declare-fun m!783701 () Bool)

(assert (=> mapNonEmpty!24815 m!783701))

(declare-fun m!783703 () Bool)

(assert (=> b!839588 m!783703))

(declare-fun m!783705 () Bool)

(assert (=> b!839577 m!783705))

(declare-fun m!783707 () Bool)

(assert (=> b!839579 m!783707))

(declare-fun m!783709 () Bool)

(assert (=> b!839583 m!783709))

(declare-fun m!783711 () Bool)

(assert (=> b!839584 m!783711))

(declare-fun m!783713 () Bool)

(assert (=> bm!37064 m!783713))

(declare-fun m!783715 () Bool)

(assert (=> bm!37064 m!783715))

(declare-fun m!783717 () Bool)

(assert (=> start!72454 m!783717))

(declare-fun m!783719 () Bool)

(assert (=> start!72454 m!783719))

(declare-fun m!783721 () Bool)

(assert (=> bm!37063 m!783721))

(check-sat b_and!22715 (not b!839577) (not bm!37063) (not mapNonEmpty!24815) (not b!839585) (not start!72454) tp_is_empty!15477 (not b!839579) (not b!839588) (not b_next!13611) (not b!839582) (not b!839583) (not bm!37064))
(check-sat b_and!22715 (not b_next!13611))
