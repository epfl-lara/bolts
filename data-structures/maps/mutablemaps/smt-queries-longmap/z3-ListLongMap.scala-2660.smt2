; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39788 () Bool)

(assert start!39788)

(declare-fun b_free!10047 () Bool)

(declare-fun b_next!10047 () Bool)

(assert (=> start!39788 (= b_free!10047 (not b_next!10047))))

(declare-fun tp!35669 () Bool)

(declare-fun b_and!17771 () Bool)

(assert (=> start!39788 (= tp!35669 b_and!17771)))

(declare-fun b!428531 () Bool)

(declare-datatypes ((Unit!12540 0))(
  ( (Unit!12541) )
))
(declare-fun e!253929 () Unit!12540)

(declare-fun Unit!12542 () Unit!12540)

(assert (=> b!428531 (= e!253929 Unit!12542)))

(declare-fun lt!195866 () Unit!12540)

(declare-fun k0!794 () (_ BitVec 64))

(declare-datatypes ((array!26215 0))(
  ( (array!26216 (arr!12554 (Array (_ BitVec 32) (_ BitVec 64))) (size!12906 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26215)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26215 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12540)

(assert (=> b!428531 (= lt!195866 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!428531 false))

(declare-fun b!428532 () Bool)

(declare-fun e!253927 () Bool)

(declare-fun e!253924 () Bool)

(assert (=> b!428532 (= e!253927 e!253924)))

(declare-fun res!251658 () Bool)

(assert (=> b!428532 (=> (not res!251658) (not e!253924))))

(declare-fun lt!195865 () array!26215)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26215 (_ BitVec 32)) Bool)

(assert (=> b!428532 (= res!251658 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!195865 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!428532 (= lt!195865 (array!26216 (store (arr!12554 _keys!709) i!563 k0!794) (size!12906 _keys!709)))))

(declare-fun b!428533 () Bool)

(declare-fun e!253928 () Bool)

(assert (=> b!428533 (= e!253924 e!253928)))

(declare-fun res!251655 () Bool)

(assert (=> b!428533 (=> (not res!251655) (not e!253928))))

(assert (=> b!428533 (= res!251655 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!16037 0))(
  ( (V!16038 (val!5644 Int)) )
))
(declare-fun minValue!515 () V!16037)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5256 0))(
  ( (ValueCellFull!5256 (v!7887 V!16037)) (EmptyCell!5256) )
))
(declare-datatypes ((array!26217 0))(
  ( (array!26218 (arr!12555 (Array (_ BitVec 32) ValueCell!5256)) (size!12907 (_ BitVec 32))) )
))
(declare-fun lt!195862 () array!26217)

(declare-fun zeroValue!515 () V!16037)

(declare-datatypes ((tuple2!7364 0))(
  ( (tuple2!7365 (_1!3692 (_ BitVec 64)) (_2!3692 V!16037)) )
))
(declare-datatypes ((List!7413 0))(
  ( (Nil!7410) (Cons!7409 (h!8265 tuple2!7364) (t!12917 List!7413)) )
))
(declare-datatypes ((ListLongMap!6291 0))(
  ( (ListLongMap!6292 (toList!3161 List!7413)) )
))
(declare-fun lt!195863 () ListLongMap!6291)

(declare-fun getCurrentListMapNoExtraKeys!1360 (array!26215 array!26217 (_ BitVec 32) (_ BitVec 32) V!16037 V!16037 (_ BitVec 32) Int) ListLongMap!6291)

(assert (=> b!428533 (= lt!195863 (getCurrentListMapNoExtraKeys!1360 lt!195865 lt!195862 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16037)

(declare-fun _values!549 () array!26217)

(assert (=> b!428533 (= lt!195862 (array!26218 (store (arr!12555 _values!549) i!563 (ValueCellFull!5256 v!412)) (size!12907 _values!549)))))

(declare-fun lt!195860 () ListLongMap!6291)

(assert (=> b!428533 (= lt!195860 (getCurrentListMapNoExtraKeys!1360 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!428534 () Bool)

(declare-fun e!253923 () Bool)

(assert (=> b!428534 (= e!253928 (not e!253923))))

(declare-fun res!251652 () Bool)

(assert (=> b!428534 (=> res!251652 e!253923)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!428534 (= res!251652 (not (validKeyInArray!0 (select (arr!12554 _keys!709) from!863))))))

(declare-fun lt!195867 () ListLongMap!6291)

(declare-fun lt!195864 () ListLongMap!6291)

(assert (=> b!428534 (= lt!195867 lt!195864)))

(declare-fun lt!195858 () ListLongMap!6291)

(declare-fun +!1313 (ListLongMap!6291 tuple2!7364) ListLongMap!6291)

(assert (=> b!428534 (= lt!195864 (+!1313 lt!195858 (tuple2!7365 k0!794 v!412)))))

(assert (=> b!428534 (= lt!195867 (getCurrentListMapNoExtraKeys!1360 lt!195865 lt!195862 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!428534 (= lt!195858 (getCurrentListMapNoExtraKeys!1360 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!195861 () Unit!12540)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!513 (array!26215 array!26217 (_ BitVec 32) (_ BitVec 32) V!16037 V!16037 (_ BitVec 32) (_ BitVec 64) V!16037 (_ BitVec 32) Int) Unit!12540)

(assert (=> b!428534 (= lt!195861 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!513 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!428535 () Bool)

(declare-fun Unit!12543 () Unit!12540)

(assert (=> b!428535 (= e!253929 Unit!12543)))

(declare-fun b!428536 () Bool)

(declare-fun res!251661 () Bool)

(assert (=> b!428536 (=> (not res!251661) (not e!253927))))

(declare-fun arrayContainsKey!0 (array!26215 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!428536 (= res!251661 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!428537 () Bool)

(declare-fun res!251650 () Bool)

(assert (=> b!428537 (=> (not res!251650) (not e!253924))))

(assert (=> b!428537 (= res!251650 (bvsle from!863 i!563))))

(declare-fun b!428538 () Bool)

(declare-fun e!253930 () Bool)

(declare-fun e!253926 () Bool)

(declare-fun mapRes!18420 () Bool)

(assert (=> b!428538 (= e!253930 (and e!253926 mapRes!18420))))

(declare-fun condMapEmpty!18420 () Bool)

(declare-fun mapDefault!18420 () ValueCell!5256)

(assert (=> b!428538 (= condMapEmpty!18420 (= (arr!12555 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5256)) mapDefault!18420)))))

(declare-fun b!428539 () Bool)

(declare-fun res!251651 () Bool)

(assert (=> b!428539 (=> (not res!251651) (not e!253927))))

(assert (=> b!428539 (= res!251651 (or (= (select (arr!12554 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12554 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!18420 () Bool)

(assert (=> mapIsEmpty!18420 mapRes!18420))

(declare-fun mapNonEmpty!18420 () Bool)

(declare-fun tp!35670 () Bool)

(declare-fun e!253925 () Bool)

(assert (=> mapNonEmpty!18420 (= mapRes!18420 (and tp!35670 e!253925))))

(declare-fun mapRest!18420 () (Array (_ BitVec 32) ValueCell!5256))

(declare-fun mapKey!18420 () (_ BitVec 32))

(declare-fun mapValue!18420 () ValueCell!5256)

(assert (=> mapNonEmpty!18420 (= (arr!12555 _values!549) (store mapRest!18420 mapKey!18420 mapValue!18420))))

(declare-fun res!251648 () Bool)

(assert (=> start!39788 (=> (not res!251648) (not e!253927))))

(assert (=> start!39788 (= res!251648 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12906 _keys!709))))))

(assert (=> start!39788 e!253927))

(declare-fun tp_is_empty!11199 () Bool)

(assert (=> start!39788 tp_is_empty!11199))

(assert (=> start!39788 tp!35669))

(assert (=> start!39788 true))

(declare-fun array_inv!9136 (array!26217) Bool)

(assert (=> start!39788 (and (array_inv!9136 _values!549) e!253930)))

(declare-fun array_inv!9137 (array!26215) Bool)

(assert (=> start!39788 (array_inv!9137 _keys!709)))

(declare-fun b!428530 () Bool)

(declare-fun res!251653 () Bool)

(assert (=> b!428530 (=> (not res!251653) (not e!253927))))

(assert (=> b!428530 (= res!251653 (and (= (size!12907 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12906 _keys!709) (size!12907 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!428540 () Bool)

(declare-fun res!251654 () Bool)

(assert (=> b!428540 (=> (not res!251654) (not e!253927))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!428540 (= res!251654 (validMask!0 mask!1025))))

(declare-fun b!428541 () Bool)

(declare-fun res!251657 () Bool)

(assert (=> b!428541 (=> (not res!251657) (not e!253924))))

(declare-datatypes ((List!7414 0))(
  ( (Nil!7411) (Cons!7410 (h!8266 (_ BitVec 64)) (t!12918 List!7414)) )
))
(declare-fun arrayNoDuplicates!0 (array!26215 (_ BitVec 32) List!7414) Bool)

(assert (=> b!428541 (= res!251657 (arrayNoDuplicates!0 lt!195865 #b00000000000000000000000000000000 Nil!7411))))

(declare-fun b!428542 () Bool)

(declare-fun res!251649 () Bool)

(assert (=> b!428542 (=> (not res!251649) (not e!253927))))

(assert (=> b!428542 (= res!251649 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7411))))

(declare-fun b!428543 () Bool)

(declare-fun res!251656 () Bool)

(assert (=> b!428543 (=> (not res!251656) (not e!253927))))

(assert (=> b!428543 (= res!251656 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!428544 () Bool)

(assert (=> b!428544 (= e!253925 tp_is_empty!11199)))

(declare-fun b!428545 () Bool)

(declare-fun res!251659 () Bool)

(assert (=> b!428545 (=> (not res!251659) (not e!253927))))

(assert (=> b!428545 (= res!251659 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12906 _keys!709))))))

(declare-fun b!428546 () Bool)

(assert (=> b!428546 (= e!253926 tp_is_empty!11199)))

(declare-fun b!428547 () Bool)

(assert (=> b!428547 (= e!253923 true)))

(assert (=> b!428547 (not (= (select (arr!12554 _keys!709) from!863) k0!794))))

(declare-fun lt!195859 () Unit!12540)

(assert (=> b!428547 (= lt!195859 e!253929)))

(declare-fun c!55331 () Bool)

(assert (=> b!428547 (= c!55331 (= (select (arr!12554 _keys!709) from!863) k0!794))))

(declare-fun get!6229 (ValueCell!5256 V!16037) V!16037)

(declare-fun dynLambda!760 (Int (_ BitVec 64)) V!16037)

(assert (=> b!428547 (= lt!195863 (+!1313 lt!195864 (tuple2!7365 (select (arr!12554 _keys!709) from!863) (get!6229 (select (arr!12555 _values!549) from!863) (dynLambda!760 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!428548 () Bool)

(declare-fun res!251660 () Bool)

(assert (=> b!428548 (=> (not res!251660) (not e!253927))))

(assert (=> b!428548 (= res!251660 (validKeyInArray!0 k0!794))))

(assert (= (and start!39788 res!251648) b!428540))

(assert (= (and b!428540 res!251654) b!428530))

(assert (= (and b!428530 res!251653) b!428543))

(assert (= (and b!428543 res!251656) b!428542))

(assert (= (and b!428542 res!251649) b!428545))

(assert (= (and b!428545 res!251659) b!428548))

(assert (= (and b!428548 res!251660) b!428539))

(assert (= (and b!428539 res!251651) b!428536))

(assert (= (and b!428536 res!251661) b!428532))

(assert (= (and b!428532 res!251658) b!428541))

(assert (= (and b!428541 res!251657) b!428537))

(assert (= (and b!428537 res!251650) b!428533))

(assert (= (and b!428533 res!251655) b!428534))

(assert (= (and b!428534 (not res!251652)) b!428547))

(assert (= (and b!428547 c!55331) b!428531))

(assert (= (and b!428547 (not c!55331)) b!428535))

(assert (= (and b!428538 condMapEmpty!18420) mapIsEmpty!18420))

(assert (= (and b!428538 (not condMapEmpty!18420)) mapNonEmpty!18420))

(get-info :version)

(assert (= (and mapNonEmpty!18420 ((_ is ValueCellFull!5256) mapValue!18420)) b!428544))

(assert (= (and b!428538 ((_ is ValueCellFull!5256) mapDefault!18420)) b!428546))

(assert (= start!39788 b!428538))

(declare-fun b_lambda!9165 () Bool)

(assert (=> (not b_lambda!9165) (not b!428547)))

(declare-fun t!12916 () Bool)

(declare-fun tb!3461 () Bool)

(assert (=> (and start!39788 (= defaultEntry!557 defaultEntry!557) t!12916) tb!3461))

(declare-fun result!6441 () Bool)

(assert (=> tb!3461 (= result!6441 tp_is_empty!11199)))

(assert (=> b!428547 t!12916))

(declare-fun b_and!17773 () Bool)

(assert (= b_and!17771 (and (=> t!12916 result!6441) b_and!17773)))

(declare-fun m!416963 () Bool)

(assert (=> b!428541 m!416963))

(declare-fun m!416965 () Bool)

(assert (=> b!428536 m!416965))

(declare-fun m!416967 () Bool)

(assert (=> b!428547 m!416967))

(declare-fun m!416969 () Bool)

(assert (=> b!428547 m!416969))

(assert (=> b!428547 m!416969))

(assert (=> b!428547 m!416967))

(declare-fun m!416971 () Bool)

(assert (=> b!428547 m!416971))

(declare-fun m!416973 () Bool)

(assert (=> b!428547 m!416973))

(declare-fun m!416975 () Bool)

(assert (=> b!428547 m!416975))

(declare-fun m!416977 () Bool)

(assert (=> b!428543 m!416977))

(declare-fun m!416979 () Bool)

(assert (=> start!39788 m!416979))

(declare-fun m!416981 () Bool)

(assert (=> start!39788 m!416981))

(assert (=> b!428534 m!416975))

(declare-fun m!416983 () Bool)

(assert (=> b!428534 m!416983))

(declare-fun m!416985 () Bool)

(assert (=> b!428534 m!416985))

(assert (=> b!428534 m!416975))

(declare-fun m!416987 () Bool)

(assert (=> b!428534 m!416987))

(declare-fun m!416989 () Bool)

(assert (=> b!428534 m!416989))

(declare-fun m!416991 () Bool)

(assert (=> b!428534 m!416991))

(declare-fun m!416993 () Bool)

(assert (=> b!428542 m!416993))

(declare-fun m!416995 () Bool)

(assert (=> b!428539 m!416995))

(declare-fun m!416997 () Bool)

(assert (=> mapNonEmpty!18420 m!416997))

(declare-fun m!416999 () Bool)

(assert (=> b!428531 m!416999))

(declare-fun m!417001 () Bool)

(assert (=> b!428540 m!417001))

(declare-fun m!417003 () Bool)

(assert (=> b!428533 m!417003))

(declare-fun m!417005 () Bool)

(assert (=> b!428533 m!417005))

(declare-fun m!417007 () Bool)

(assert (=> b!428533 m!417007))

(declare-fun m!417009 () Bool)

(assert (=> b!428548 m!417009))

(declare-fun m!417011 () Bool)

(assert (=> b!428532 m!417011))

(declare-fun m!417013 () Bool)

(assert (=> b!428532 m!417013))

(check-sat (not mapNonEmpty!18420) (not b!428533) (not b!428548) (not b!428536) (not b!428532) tp_is_empty!11199 (not b!428542) (not b!428547) (not b!428534) (not b_next!10047) (not b!428531) (not b_lambda!9165) (not b!428541) (not start!39788) (not b!428540) (not b!428543) b_and!17773)
(check-sat b_and!17773 (not b_next!10047))
