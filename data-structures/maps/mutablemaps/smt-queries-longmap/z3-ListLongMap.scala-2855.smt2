; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41170 () Bool)

(assert start!41170)

(declare-fun b_free!11031 () Bool)

(declare-fun b_next!11031 () Bool)

(assert (=> start!41170 (= b_free!11031 (not b_next!11031))))

(declare-fun tp!38929 () Bool)

(declare-fun b_and!19319 () Bool)

(assert (=> start!41170 (= tp!38929 b_and!19319)))

(declare-fun b!459560 () Bool)

(declare-fun res!274756 () Bool)

(declare-fun e!268187 () Bool)

(assert (=> b!459560 (=> (not res!274756) (not e!268187))))

(declare-datatypes ((array!28503 0))(
  ( (array!28504 (arr!13689 (Array (_ BitVec 32) (_ BitVec 64))) (size!14041 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28503)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!459560 (= res!274756 (or (= (select (arr!13689 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13689 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!459561 () Bool)

(declare-fun res!274748 () Bool)

(assert (=> b!459561 (=> (not res!274748) (not e!268187))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28503 (_ BitVec 32)) Bool)

(assert (=> b!459561 (= res!274748 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!459562 () Bool)

(declare-fun res!274749 () Bool)

(assert (=> b!459562 (=> (not res!274749) (not e!268187))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!459562 (= res!274749 (validKeyInArray!0 k0!794))))

(declare-fun res!274753 () Bool)

(assert (=> start!41170 (=> (not res!274753) (not e!268187))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!41170 (= res!274753 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!14041 _keys!709))))))

(assert (=> start!41170 e!268187))

(declare-fun tp_is_empty!12369 () Bool)

(assert (=> start!41170 tp_is_empty!12369))

(assert (=> start!41170 tp!38929))

(assert (=> start!41170 true))

(declare-datatypes ((V!17597 0))(
  ( (V!17598 (val!6229 Int)) )
))
(declare-datatypes ((ValueCell!5841 0))(
  ( (ValueCellFull!5841 (v!8503 V!17597)) (EmptyCell!5841) )
))
(declare-datatypes ((array!28505 0))(
  ( (array!28506 (arr!13690 (Array (_ BitVec 32) ValueCell!5841)) (size!14042 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28505)

(declare-fun e!268190 () Bool)

(declare-fun array_inv!9898 (array!28505) Bool)

(assert (=> start!41170 (and (array_inv!9898 _values!549) e!268190)))

(declare-fun array_inv!9899 (array!28503) Bool)

(assert (=> start!41170 (array_inv!9899 _keys!709)))

(declare-fun b!459563 () Bool)

(declare-fun e!268195 () Bool)

(assert (=> b!459563 (= e!268195 tp_is_empty!12369)))

(declare-fun b!459564 () Bool)

(declare-fun mapRes!20203 () Bool)

(assert (=> b!459564 (= e!268190 (and e!268195 mapRes!20203))))

(declare-fun condMapEmpty!20203 () Bool)

(declare-fun mapDefault!20203 () ValueCell!5841)

(assert (=> b!459564 (= condMapEmpty!20203 (= (arr!13690 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5841)) mapDefault!20203)))))

(declare-fun b!459565 () Bool)

(declare-fun res!274758 () Bool)

(declare-fun e!268188 () Bool)

(assert (=> b!459565 (=> (not res!274758) (not e!268188))))

(declare-fun lt!207988 () array!28503)

(declare-datatypes ((List!8282 0))(
  ( (Nil!8279) (Cons!8278 (h!9134 (_ BitVec 64)) (t!14200 List!8282)) )
))
(declare-fun arrayNoDuplicates!0 (array!28503 (_ BitVec 32) List!8282) Bool)

(assert (=> b!459565 (= res!274758 (arrayNoDuplicates!0 lt!207988 #b00000000000000000000000000000000 Nil!8279))))

(declare-fun b!459566 () Bool)

(declare-fun res!274751 () Bool)

(assert (=> b!459566 (=> (not res!274751) (not e!268187))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!459566 (= res!274751 (and (= (size!14042 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14041 _keys!709) (size!14042 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!459567 () Bool)

(declare-fun e!268194 () Bool)

(assert (=> b!459567 (= e!268194 tp_is_empty!12369)))

(declare-fun mapNonEmpty!20203 () Bool)

(declare-fun tp!38928 () Bool)

(assert (=> mapNonEmpty!20203 (= mapRes!20203 (and tp!38928 e!268194))))

(declare-fun mapValue!20203 () ValueCell!5841)

(declare-fun mapRest!20203 () (Array (_ BitVec 32) ValueCell!5841))

(declare-fun mapKey!20203 () (_ BitVec 32))

(assert (=> mapNonEmpty!20203 (= (arr!13690 _values!549) (store mapRest!20203 mapKey!20203 mapValue!20203))))

(declare-fun b!459568 () Bool)

(declare-datatypes ((Unit!13312 0))(
  ( (Unit!13313) )
))
(declare-fun e!268189 () Unit!13312)

(declare-fun Unit!13314 () Unit!13312)

(assert (=> b!459568 (= e!268189 Unit!13314)))

(declare-fun lt!207990 () Unit!13312)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!28503 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!13312)

(assert (=> b!459568 (= lt!207990 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!459568 false))

(declare-fun b!459569 () Bool)

(declare-fun e!268192 () Bool)

(assert (=> b!459569 (= e!268192 (not (= k0!794 (select (arr!13689 _keys!709) from!863))))))

(assert (=> b!459569 (not (= (select (arr!13689 _keys!709) from!863) k0!794))))

(declare-fun lt!207989 () Unit!13312)

(assert (=> b!459569 (= lt!207989 e!268189)))

(declare-fun c!56420 () Bool)

(assert (=> b!459569 (= c!56420 (= (select (arr!13689 _keys!709) from!863) k0!794))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!8178 0))(
  ( (tuple2!8179 (_1!4099 (_ BitVec 64)) (_2!4099 V!17597)) )
))
(declare-datatypes ((List!8283 0))(
  ( (Nil!8280) (Cons!8279 (h!9135 tuple2!8178) (t!14201 List!8283)) )
))
(declare-datatypes ((ListLongMap!7105 0))(
  ( (ListLongMap!7106 (toList!3568 List!8283)) )
))
(declare-fun lt!207992 () ListLongMap!7105)

(declare-fun lt!207991 () ListLongMap!7105)

(declare-fun +!1587 (ListLongMap!7105 tuple2!8178) ListLongMap!7105)

(declare-fun get!6767 (ValueCell!5841 V!17597) V!17597)

(declare-fun dynLambda!897 (Int (_ BitVec 64)) V!17597)

(assert (=> b!459569 (= lt!207991 (+!1587 lt!207992 (tuple2!8179 (select (arr!13689 _keys!709) from!863) (get!6767 (select (arr!13690 _values!549) from!863) (dynLambda!897 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!459570 () Bool)

(declare-fun e!268191 () Bool)

(assert (=> b!459570 (= e!268191 (not e!268192))))

(declare-fun res!274752 () Bool)

(assert (=> b!459570 (=> res!274752 e!268192)))

(assert (=> b!459570 (= res!274752 (not (validKeyInArray!0 (select (arr!13689 _keys!709) from!863))))))

(declare-fun lt!207985 () ListLongMap!7105)

(assert (=> b!459570 (= lt!207985 lt!207992)))

(declare-fun lt!207984 () ListLongMap!7105)

(declare-fun v!412 () V!17597)

(assert (=> b!459570 (= lt!207992 (+!1587 lt!207984 (tuple2!8179 k0!794 v!412)))))

(declare-fun minValue!515 () V!17597)

(declare-fun zeroValue!515 () V!17597)

(declare-fun lt!207993 () array!28505)

(declare-fun getCurrentListMapNoExtraKeys!1738 (array!28503 array!28505 (_ BitVec 32) (_ BitVec 32) V!17597 V!17597 (_ BitVec 32) Int) ListLongMap!7105)

(assert (=> b!459570 (= lt!207985 (getCurrentListMapNoExtraKeys!1738 lt!207988 lt!207993 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!459570 (= lt!207984 (getCurrentListMapNoExtraKeys!1738 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!207986 () Unit!13312)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!741 (array!28503 array!28505 (_ BitVec 32) (_ BitVec 32) V!17597 V!17597 (_ BitVec 32) (_ BitVec 64) V!17597 (_ BitVec 32) Int) Unit!13312)

(assert (=> b!459570 (= lt!207986 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!741 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!459571 () Bool)

(declare-fun res!274757 () Bool)

(assert (=> b!459571 (=> (not res!274757) (not e!268187))))

(declare-fun arrayContainsKey!0 (array!28503 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!459571 (= res!274757 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!459572 () Bool)

(declare-fun res!274759 () Bool)

(assert (=> b!459572 (=> (not res!274759) (not e!268187))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!459572 (= res!274759 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!20203 () Bool)

(assert (=> mapIsEmpty!20203 mapRes!20203))

(declare-fun b!459573 () Bool)

(assert (=> b!459573 (= e!268187 e!268188)))

(declare-fun res!274747 () Bool)

(assert (=> b!459573 (=> (not res!274747) (not e!268188))))

(assert (=> b!459573 (= res!274747 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!207988 mask!1025))))

(assert (=> b!459573 (= lt!207988 (array!28504 (store (arr!13689 _keys!709) i!563 k0!794) (size!14041 _keys!709)))))

(declare-fun b!459574 () Bool)

(assert (=> b!459574 (= e!268188 e!268191)))

(declare-fun res!274755 () Bool)

(assert (=> b!459574 (=> (not res!274755) (not e!268191))))

(assert (=> b!459574 (= res!274755 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!459574 (= lt!207991 (getCurrentListMapNoExtraKeys!1738 lt!207988 lt!207993 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!459574 (= lt!207993 (array!28506 (store (arr!13690 _values!549) i!563 (ValueCellFull!5841 v!412)) (size!14042 _values!549)))))

(declare-fun lt!207987 () ListLongMap!7105)

(assert (=> b!459574 (= lt!207987 (getCurrentListMapNoExtraKeys!1738 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!459575 () Bool)

(declare-fun res!274750 () Bool)

(assert (=> b!459575 (=> (not res!274750) (not e!268187))))

(assert (=> b!459575 (= res!274750 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14041 _keys!709))))))

(declare-fun b!459576 () Bool)

(declare-fun res!274754 () Bool)

(assert (=> b!459576 (=> (not res!274754) (not e!268187))))

(assert (=> b!459576 (= res!274754 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8279))))

(declare-fun b!459577 () Bool)

(declare-fun res!274746 () Bool)

(assert (=> b!459577 (=> (not res!274746) (not e!268188))))

(assert (=> b!459577 (= res!274746 (bvsle from!863 i!563))))

(declare-fun b!459578 () Bool)

(declare-fun Unit!13315 () Unit!13312)

(assert (=> b!459578 (= e!268189 Unit!13315)))

(assert (= (and start!41170 res!274753) b!459572))

(assert (= (and b!459572 res!274759) b!459566))

(assert (= (and b!459566 res!274751) b!459561))

(assert (= (and b!459561 res!274748) b!459576))

(assert (= (and b!459576 res!274754) b!459575))

(assert (= (and b!459575 res!274750) b!459562))

(assert (= (and b!459562 res!274749) b!459560))

(assert (= (and b!459560 res!274756) b!459571))

(assert (= (and b!459571 res!274757) b!459573))

(assert (= (and b!459573 res!274747) b!459565))

(assert (= (and b!459565 res!274758) b!459577))

(assert (= (and b!459577 res!274746) b!459574))

(assert (= (and b!459574 res!274755) b!459570))

(assert (= (and b!459570 (not res!274752)) b!459569))

(assert (= (and b!459569 c!56420) b!459568))

(assert (= (and b!459569 (not c!56420)) b!459578))

(assert (= (and b!459564 condMapEmpty!20203) mapIsEmpty!20203))

(assert (= (and b!459564 (not condMapEmpty!20203)) mapNonEmpty!20203))

(get-info :version)

(assert (= (and mapNonEmpty!20203 ((_ is ValueCellFull!5841) mapValue!20203)) b!459567))

(assert (= (and b!459564 ((_ is ValueCellFull!5841) mapDefault!20203)) b!459563))

(assert (= start!41170 b!459564))

(declare-fun b_lambda!9895 () Bool)

(assert (=> (not b_lambda!9895) (not b!459569)))

(declare-fun t!14199 () Bool)

(declare-fun tb!3875 () Bool)

(assert (=> (and start!41170 (= defaultEntry!557 defaultEntry!557) t!14199) tb!3875))

(declare-fun result!7287 () Bool)

(assert (=> tb!3875 (= result!7287 tp_is_empty!12369)))

(assert (=> b!459569 t!14199))

(declare-fun b_and!19321 () Bool)

(assert (= b_and!19319 (and (=> t!14199 result!7287) b_and!19321)))

(declare-fun m!442839 () Bool)

(assert (=> b!459560 m!442839))

(declare-fun m!442841 () Bool)

(assert (=> b!459572 m!442841))

(declare-fun m!442843 () Bool)

(assert (=> start!41170 m!442843))

(declare-fun m!442845 () Bool)

(assert (=> start!41170 m!442845))

(declare-fun m!442847 () Bool)

(assert (=> b!459571 m!442847))

(declare-fun m!442849 () Bool)

(assert (=> b!459561 m!442849))

(declare-fun m!442851 () Bool)

(assert (=> b!459573 m!442851))

(declare-fun m!442853 () Bool)

(assert (=> b!459573 m!442853))

(declare-fun m!442855 () Bool)

(assert (=> b!459565 m!442855))

(declare-fun m!442857 () Bool)

(assert (=> b!459569 m!442857))

(declare-fun m!442859 () Bool)

(assert (=> b!459569 m!442859))

(declare-fun m!442861 () Bool)

(assert (=> b!459569 m!442861))

(assert (=> b!459569 m!442861))

(assert (=> b!459569 m!442859))

(declare-fun m!442863 () Bool)

(assert (=> b!459569 m!442863))

(declare-fun m!442865 () Bool)

(assert (=> b!459569 m!442865))

(declare-fun m!442867 () Bool)

(assert (=> b!459576 m!442867))

(declare-fun m!442869 () Bool)

(assert (=> b!459574 m!442869))

(declare-fun m!442871 () Bool)

(assert (=> b!459574 m!442871))

(declare-fun m!442873 () Bool)

(assert (=> b!459574 m!442873))

(declare-fun m!442875 () Bool)

(assert (=> b!459562 m!442875))

(declare-fun m!442877 () Bool)

(assert (=> mapNonEmpty!20203 m!442877))

(declare-fun m!442879 () Bool)

(assert (=> b!459568 m!442879))

(assert (=> b!459570 m!442857))

(declare-fun m!442881 () Bool)

(assert (=> b!459570 m!442881))

(assert (=> b!459570 m!442857))

(declare-fun m!442883 () Bool)

(assert (=> b!459570 m!442883))

(declare-fun m!442885 () Bool)

(assert (=> b!459570 m!442885))

(declare-fun m!442887 () Bool)

(assert (=> b!459570 m!442887))

(declare-fun m!442889 () Bool)

(assert (=> b!459570 m!442889))

(check-sat (not b!459574) (not b_lambda!9895) (not b_next!11031) (not b!459576) (not b!459565) (not b!459573) (not start!41170) (not b!459562) tp_is_empty!12369 (not b!459571) (not b!459561) (not b!459569) (not b!459570) (not b!459572) (not mapNonEmpty!20203) b_and!19321 (not b!459568))
(check-sat b_and!19321 (not b_next!11031))
