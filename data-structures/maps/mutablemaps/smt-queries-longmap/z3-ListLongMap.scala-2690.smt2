; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39968 () Bool)

(assert start!39968)

(declare-fun b_free!10227 () Bool)

(declare-fun b_next!10227 () Bool)

(assert (=> start!39968 (= b_free!10227 (not b_next!10227))))

(declare-fun tp!36209 () Bool)

(declare-fun b_and!18131 () Bool)

(assert (=> start!39968 (= tp!36209 b_and!18131)))

(declare-fun b!434043 () Bool)

(declare-fun res!255636 () Bool)

(declare-fun e!256559 () Bool)

(assert (=> b!434043 (=> (not res!255636) (not e!256559))))

(declare-datatypes ((array!26565 0))(
  ( (array!26566 (arr!12729 (Array (_ BitVec 32) (_ BitVec 64))) (size!13081 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26565)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26565 (_ BitVec 32)) Bool)

(assert (=> b!434043 (= res!255636 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!434044 () Bool)

(declare-fun e!256561 () Bool)

(assert (=> b!434044 (= e!256559 e!256561)))

(declare-fun res!255635 () Bool)

(assert (=> b!434044 (=> (not res!255635) (not e!256561))))

(declare-fun lt!199579 () array!26565)

(assert (=> b!434044 (= res!255635 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!199579 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!434044 (= lt!199579 (array!26566 (store (arr!12729 _keys!709) i!563 k0!794) (size!13081 _keys!709)))))

(declare-fun b!434045 () Bool)

(declare-fun e!256563 () Bool)

(declare-fun e!256560 () Bool)

(assert (=> b!434045 (= e!256563 e!256560)))

(declare-fun res!255643 () Bool)

(assert (=> b!434045 (=> res!255643 e!256560)))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!434045 (= res!255643 (= k0!794 (select (arr!12729 _keys!709) from!863)))))

(assert (=> b!434045 (not (= (select (arr!12729 _keys!709) from!863) k0!794))))

(declare-datatypes ((Unit!12824 0))(
  ( (Unit!12825) )
))
(declare-fun lt!199586 () Unit!12824)

(declare-fun e!256558 () Unit!12824)

(assert (=> b!434045 (= lt!199586 e!256558)))

(declare-fun c!55601 () Bool)

(assert (=> b!434045 (= c!55601 (= (select (arr!12729 _keys!709) from!863) k0!794))))

(declare-datatypes ((V!16277 0))(
  ( (V!16278 (val!5734 Int)) )
))
(declare-datatypes ((tuple2!7516 0))(
  ( (tuple2!7517 (_1!3768 (_ BitVec 64)) (_2!3768 V!16277)) )
))
(declare-datatypes ((List!7564 0))(
  ( (Nil!7561) (Cons!7560 (h!8416 tuple2!7516) (t!13248 List!7564)) )
))
(declare-datatypes ((ListLongMap!6443 0))(
  ( (ListLongMap!6444 (toList!3237 List!7564)) )
))
(declare-fun lt!199575 () ListLongMap!6443)

(declare-fun lt!199582 () ListLongMap!6443)

(assert (=> b!434045 (= lt!199575 lt!199582)))

(declare-fun lt!199577 () ListLongMap!6443)

(declare-fun lt!199583 () tuple2!7516)

(declare-fun +!1382 (ListLongMap!6443 tuple2!7516) ListLongMap!6443)

(assert (=> b!434045 (= lt!199582 (+!1382 lt!199577 lt!199583))))

(declare-fun lt!199581 () V!16277)

(assert (=> b!434045 (= lt!199583 (tuple2!7517 (select (arr!12729 _keys!709) from!863) lt!199581))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5346 0))(
  ( (ValueCellFull!5346 (v!7977 V!16277)) (EmptyCell!5346) )
))
(declare-datatypes ((array!26567 0))(
  ( (array!26568 (arr!12730 (Array (_ BitVec 32) ValueCell!5346)) (size!13082 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26567)

(declare-fun get!6343 (ValueCell!5346 V!16277) V!16277)

(declare-fun dynLambda!814 (Int (_ BitVec 64)) V!16277)

(assert (=> b!434045 (= lt!199581 (get!6343 (select (arr!12730 _values!549) from!863) (dynLambda!814 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!434046 () Bool)

(assert (=> b!434046 (= e!256560 true)))

(declare-fun lt!199574 () tuple2!7516)

(declare-fun lt!199573 () ListLongMap!6443)

(assert (=> b!434046 (= lt!199582 (+!1382 (+!1382 lt!199573 lt!199583) lt!199574))))

(declare-fun lt!199576 () Unit!12824)

(declare-fun v!412 () V!16277)

(declare-fun addCommutativeForDiffKeys!391 (ListLongMap!6443 (_ BitVec 64) V!16277 (_ BitVec 64) V!16277) Unit!12824)

(assert (=> b!434046 (= lt!199576 (addCommutativeForDiffKeys!391 lt!199573 k0!794 v!412 (select (arr!12729 _keys!709) from!863) lt!199581))))

(declare-fun b!434047 () Bool)

(declare-fun e!256557 () Bool)

(assert (=> b!434047 (= e!256561 e!256557)))

(declare-fun res!255632 () Bool)

(assert (=> b!434047 (=> (not res!255632) (not e!256557))))

(assert (=> b!434047 (= res!255632 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16277)

(declare-fun lt!199587 () array!26567)

(declare-fun zeroValue!515 () V!16277)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1426 (array!26565 array!26567 (_ BitVec 32) (_ BitVec 32) V!16277 V!16277 (_ BitVec 32) Int) ListLongMap!6443)

(assert (=> b!434047 (= lt!199575 (getCurrentListMapNoExtraKeys!1426 lt!199579 lt!199587 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!434047 (= lt!199587 (array!26568 (store (arr!12730 _values!549) i!563 (ValueCellFull!5346 v!412)) (size!13082 _values!549)))))

(declare-fun lt!199585 () ListLongMap!6443)

(assert (=> b!434047 (= lt!199585 (getCurrentListMapNoExtraKeys!1426 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!434048 () Bool)

(declare-fun res!255631 () Bool)

(assert (=> b!434048 (=> (not res!255631) (not e!256559))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!434048 (= res!255631 (validKeyInArray!0 k0!794))))

(declare-fun res!255645 () Bool)

(assert (=> start!39968 (=> (not res!255645) (not e!256559))))

(assert (=> start!39968 (= res!255645 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13081 _keys!709))))))

(assert (=> start!39968 e!256559))

(declare-fun tp_is_empty!11379 () Bool)

(assert (=> start!39968 tp_is_empty!11379))

(assert (=> start!39968 tp!36209))

(assert (=> start!39968 true))

(declare-fun e!256564 () Bool)

(declare-fun array_inv!9256 (array!26567) Bool)

(assert (=> start!39968 (and (array_inv!9256 _values!549) e!256564)))

(declare-fun array_inv!9257 (array!26565) Bool)

(assert (=> start!39968 (array_inv!9257 _keys!709)))

(declare-fun b!434049 () Bool)

(declare-fun e!256562 () Bool)

(declare-fun mapRes!18690 () Bool)

(assert (=> b!434049 (= e!256564 (and e!256562 mapRes!18690))))

(declare-fun condMapEmpty!18690 () Bool)

(declare-fun mapDefault!18690 () ValueCell!5346)

(assert (=> b!434049 (= condMapEmpty!18690 (= (arr!12730 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5346)) mapDefault!18690)))))

(declare-fun b!434050 () Bool)

(declare-fun e!256555 () Bool)

(assert (=> b!434050 (= e!256555 tp_is_empty!11379)))

(declare-fun b!434051 () Bool)

(declare-fun Unit!12826 () Unit!12824)

(assert (=> b!434051 (= e!256558 Unit!12826)))

(declare-fun b!434052 () Bool)

(declare-fun res!255639 () Bool)

(assert (=> b!434052 (=> (not res!255639) (not e!256559))))

(assert (=> b!434052 (= res!255639 (or (= (select (arr!12729 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12729 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!434053 () Bool)

(assert (=> b!434053 (= e!256557 (not e!256563))))

(declare-fun res!255638 () Bool)

(assert (=> b!434053 (=> res!255638 e!256563)))

(assert (=> b!434053 (= res!255638 (not (validKeyInArray!0 (select (arr!12729 _keys!709) from!863))))))

(declare-fun lt!199580 () ListLongMap!6443)

(assert (=> b!434053 (= lt!199580 lt!199577)))

(assert (=> b!434053 (= lt!199577 (+!1382 lt!199573 lt!199574))))

(assert (=> b!434053 (= lt!199580 (getCurrentListMapNoExtraKeys!1426 lt!199579 lt!199587 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!434053 (= lt!199574 (tuple2!7517 k0!794 v!412))))

(assert (=> b!434053 (= lt!199573 (getCurrentListMapNoExtraKeys!1426 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!199578 () Unit!12824)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!569 (array!26565 array!26567 (_ BitVec 32) (_ BitVec 32) V!16277 V!16277 (_ BitVec 32) (_ BitVec 64) V!16277 (_ BitVec 32) Int) Unit!12824)

(assert (=> b!434053 (= lt!199578 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!569 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!434054 () Bool)

(declare-fun res!255644 () Bool)

(assert (=> b!434054 (=> (not res!255644) (not e!256559))))

(declare-fun arrayContainsKey!0 (array!26565 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!434054 (= res!255644 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!18690 () Bool)

(assert (=> mapIsEmpty!18690 mapRes!18690))

(declare-fun b!434055 () Bool)

(declare-fun res!255640 () Bool)

(assert (=> b!434055 (=> (not res!255640) (not e!256561))))

(assert (=> b!434055 (= res!255640 (bvsle from!863 i!563))))

(declare-fun b!434056 () Bool)

(declare-fun res!255637 () Bool)

(assert (=> b!434056 (=> (not res!255637) (not e!256559))))

(assert (=> b!434056 (= res!255637 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13081 _keys!709))))))

(declare-fun b!434057 () Bool)

(declare-fun res!255633 () Bool)

(assert (=> b!434057 (=> (not res!255633) (not e!256559))))

(assert (=> b!434057 (= res!255633 (and (= (size!13082 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13081 _keys!709) (size!13082 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!434058 () Bool)

(declare-fun res!255641 () Bool)

(assert (=> b!434058 (=> (not res!255641) (not e!256559))))

(declare-datatypes ((List!7565 0))(
  ( (Nil!7562) (Cons!7561 (h!8417 (_ BitVec 64)) (t!13249 List!7565)) )
))
(declare-fun arrayNoDuplicates!0 (array!26565 (_ BitVec 32) List!7565) Bool)

(assert (=> b!434058 (= res!255641 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7562))))

(declare-fun mapNonEmpty!18690 () Bool)

(declare-fun tp!36210 () Bool)

(assert (=> mapNonEmpty!18690 (= mapRes!18690 (and tp!36210 e!256555))))

(declare-fun mapKey!18690 () (_ BitVec 32))

(declare-fun mapRest!18690 () (Array (_ BitVec 32) ValueCell!5346))

(declare-fun mapValue!18690 () ValueCell!5346)

(assert (=> mapNonEmpty!18690 (= (arr!12730 _values!549) (store mapRest!18690 mapKey!18690 mapValue!18690))))

(declare-fun b!434059 () Bool)

(declare-fun Unit!12827 () Unit!12824)

(assert (=> b!434059 (= e!256558 Unit!12827)))

(declare-fun lt!199584 () Unit!12824)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26565 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12824)

(assert (=> b!434059 (= lt!199584 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!434059 false))

(declare-fun b!434060 () Bool)

(declare-fun res!255634 () Bool)

(assert (=> b!434060 (=> (not res!255634) (not e!256559))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!434060 (= res!255634 (validMask!0 mask!1025))))

(declare-fun b!434061 () Bool)

(declare-fun res!255642 () Bool)

(assert (=> b!434061 (=> (not res!255642) (not e!256561))))

(assert (=> b!434061 (= res!255642 (arrayNoDuplicates!0 lt!199579 #b00000000000000000000000000000000 Nil!7562))))

(declare-fun b!434062 () Bool)

(assert (=> b!434062 (= e!256562 tp_is_empty!11379)))

(assert (= (and start!39968 res!255645) b!434060))

(assert (= (and b!434060 res!255634) b!434057))

(assert (= (and b!434057 res!255633) b!434043))

(assert (= (and b!434043 res!255636) b!434058))

(assert (= (and b!434058 res!255641) b!434056))

(assert (= (and b!434056 res!255637) b!434048))

(assert (= (and b!434048 res!255631) b!434052))

(assert (= (and b!434052 res!255639) b!434054))

(assert (= (and b!434054 res!255644) b!434044))

(assert (= (and b!434044 res!255635) b!434061))

(assert (= (and b!434061 res!255642) b!434055))

(assert (= (and b!434055 res!255640) b!434047))

(assert (= (and b!434047 res!255632) b!434053))

(assert (= (and b!434053 (not res!255638)) b!434045))

(assert (= (and b!434045 c!55601) b!434059))

(assert (= (and b!434045 (not c!55601)) b!434051))

(assert (= (and b!434045 (not res!255643)) b!434046))

(assert (= (and b!434049 condMapEmpty!18690) mapIsEmpty!18690))

(assert (= (and b!434049 (not condMapEmpty!18690)) mapNonEmpty!18690))

(get-info :version)

(assert (= (and mapNonEmpty!18690 ((_ is ValueCellFull!5346) mapValue!18690)) b!434050))

(assert (= (and b!434049 ((_ is ValueCellFull!5346) mapDefault!18690)) b!434062))

(assert (= start!39968 b!434049))

(declare-fun b_lambda!9345 () Bool)

(assert (=> (not b_lambda!9345) (not b!434045)))

(declare-fun t!13247 () Bool)

(declare-fun tb!3641 () Bool)

(assert (=> (and start!39968 (= defaultEntry!557 defaultEntry!557) t!13247) tb!3641))

(declare-fun result!6801 () Bool)

(assert (=> tb!3641 (= result!6801 tp_is_empty!11379)))

(assert (=> b!434045 t!13247))

(declare-fun b_and!18133 () Bool)

(assert (= b_and!18131 (and (=> t!13247 result!6801) b_and!18133)))

(declare-fun m!422045 () Bool)

(assert (=> b!434048 m!422045))

(declare-fun m!422047 () Bool)

(assert (=> mapNonEmpty!18690 m!422047))

(declare-fun m!422049 () Bool)

(assert (=> b!434060 m!422049))

(declare-fun m!422051 () Bool)

(assert (=> b!434061 m!422051))

(declare-fun m!422053 () Bool)

(assert (=> b!434044 m!422053))

(declare-fun m!422055 () Bool)

(assert (=> b!434044 m!422055))

(declare-fun m!422057 () Bool)

(assert (=> b!434059 m!422057))

(declare-fun m!422059 () Bool)

(assert (=> b!434046 m!422059))

(assert (=> b!434046 m!422059))

(declare-fun m!422061 () Bool)

(assert (=> b!434046 m!422061))

(declare-fun m!422063 () Bool)

(assert (=> b!434046 m!422063))

(assert (=> b!434046 m!422063))

(declare-fun m!422065 () Bool)

(assert (=> b!434046 m!422065))

(declare-fun m!422067 () Bool)

(assert (=> b!434054 m!422067))

(assert (=> b!434053 m!422063))

(declare-fun m!422069 () Bool)

(assert (=> b!434053 m!422069))

(declare-fun m!422071 () Bool)

(assert (=> b!434053 m!422071))

(declare-fun m!422073 () Bool)

(assert (=> b!434053 m!422073))

(assert (=> b!434053 m!422063))

(declare-fun m!422075 () Bool)

(assert (=> b!434053 m!422075))

(declare-fun m!422077 () Bool)

(assert (=> b!434053 m!422077))

(declare-fun m!422079 () Bool)

(assert (=> b!434052 m!422079))

(declare-fun m!422081 () Bool)

(assert (=> b!434058 m!422081))

(declare-fun m!422083 () Bool)

(assert (=> b!434047 m!422083))

(declare-fun m!422085 () Bool)

(assert (=> b!434047 m!422085))

(declare-fun m!422087 () Bool)

(assert (=> b!434047 m!422087))

(declare-fun m!422089 () Bool)

(assert (=> b!434043 m!422089))

(declare-fun m!422091 () Bool)

(assert (=> start!39968 m!422091))

(declare-fun m!422093 () Bool)

(assert (=> start!39968 m!422093))

(assert (=> b!434045 m!422063))

(declare-fun m!422095 () Bool)

(assert (=> b!434045 m!422095))

(declare-fun m!422097 () Bool)

(assert (=> b!434045 m!422097))

(declare-fun m!422099 () Bool)

(assert (=> b!434045 m!422099))

(assert (=> b!434045 m!422097))

(assert (=> b!434045 m!422095))

(declare-fun m!422101 () Bool)

(assert (=> b!434045 m!422101))

(check-sat (not b_lambda!9345) (not b!434059) (not b!434058) tp_is_empty!11379 (not b!434046) (not b!434060) (not b!434048) (not b!434044) (not mapNonEmpty!18690) (not b!434054) (not b!434043) (not b_next!10227) (not b!434045) b_and!18133 (not b!434047) (not b!434053) (not b!434061) (not start!39968))
(check-sat b_and!18133 (not b_next!10227))
