; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78510 () Bool)

(assert start!78510)

(declare-fun b!914942 () Bool)

(declare-fun e!513437 () Bool)

(declare-fun tp_is_empty!19215 () Bool)

(assert (=> b!914942 (= e!513437 tp_is_empty!19215)))

(declare-fun b!914943 () Bool)

(declare-fun e!513439 () Bool)

(assert (=> b!914943 (= e!513439 tp_is_empty!19215)))

(declare-fun mapNonEmpty!30576 () Bool)

(declare-fun mapRes!30576 () Bool)

(declare-fun tp!58644 () Bool)

(assert (=> mapNonEmpty!30576 (= mapRes!30576 (and tp!58644 e!513439))))

(declare-datatypes ((V!30585 0))(
  ( (V!30586 (val!9658 Int)) )
))
(declare-datatypes ((ValueCell!9126 0))(
  ( (ValueCellFull!9126 (v!12175 V!30585)) (EmptyCell!9126) )
))
(declare-fun mapValue!30576 () ValueCell!9126)

(declare-fun mapRest!30576 () (Array (_ BitVec 32) ValueCell!9126))

(declare-fun mapKey!30576 () (_ BitVec 32))

(declare-datatypes ((array!54442 0))(
  ( (array!54443 (arr!26163 (Array (_ BitVec 32) ValueCell!9126)) (size!26623 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54442)

(assert (=> mapNonEmpty!30576 (= (arr!26163 _values!1231) (store mapRest!30576 mapKey!30576 mapValue!30576))))

(declare-fun res!617039 () Bool)

(declare-fun e!513441 () Bool)

(assert (=> start!78510 (=> (not res!617039) (not e!513441))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78510 (= res!617039 (validMask!0 mask!1881))))

(assert (=> start!78510 e!513441))

(assert (=> start!78510 true))

(declare-fun e!513440 () Bool)

(declare-fun array_inv!20414 (array!54442) Bool)

(assert (=> start!78510 (and (array_inv!20414 _values!1231) e!513440)))

(declare-datatypes ((array!54444 0))(
  ( (array!54445 (arr!26164 (Array (_ BitVec 32) (_ BitVec 64))) (size!26624 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54444)

(declare-fun array_inv!20415 (array!54444) Bool)

(assert (=> start!78510 (array_inv!20415 _keys!1487)))

(declare-fun b!914944 () Bool)

(declare-fun res!617041 () Bool)

(assert (=> b!914944 (=> (not res!617041) (not e!513441))))

(declare-datatypes ((List!18473 0))(
  ( (Nil!18470) (Cons!18469 (h!19615 (_ BitVec 64)) (t!26094 List!18473)) )
))
(declare-fun noDuplicate!1333 (List!18473) Bool)

(assert (=> b!914944 (= res!617041 (noDuplicate!1333 Nil!18470))))

(declare-fun b!914945 () Bool)

(assert (=> b!914945 (= e!513440 (and e!513437 mapRes!30576))))

(declare-fun condMapEmpty!30576 () Bool)

(declare-fun mapDefault!30576 () ValueCell!9126)

(assert (=> b!914945 (= condMapEmpty!30576 (= (arr!26163 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9126)) mapDefault!30576)))))

(declare-fun b!914946 () Bool)

(declare-fun res!617040 () Bool)

(assert (=> b!914946 (=> (not res!617040) (not e!513441))))

(assert (=> b!914946 (= res!617040 (and (bvsle #b00000000000000000000000000000000 (size!26624 _keys!1487)) (bvslt (size!26624 _keys!1487) #b01111111111111111111111111111111)))))

(declare-fun b!914947 () Bool)

(declare-fun e!513438 () Bool)

(assert (=> b!914947 (= e!513441 e!513438)))

(declare-fun res!617042 () Bool)

(assert (=> b!914947 (=> res!617042 e!513438)))

(declare-fun contains!4705 (List!18473 (_ BitVec 64)) Bool)

(assert (=> b!914947 (= res!617042 (contains!4705 Nil!18470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!914948 () Bool)

(assert (=> b!914948 (= e!513438 (contains!4705 Nil!18470 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!914949 () Bool)

(declare-fun res!617038 () Bool)

(assert (=> b!914949 (=> (not res!617038) (not e!513441))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!914949 (= res!617038 (and (= (size!26623 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26624 _keys!1487) (size!26623 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!914950 () Bool)

(declare-fun res!617043 () Bool)

(assert (=> b!914950 (=> (not res!617043) (not e!513441))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54444 (_ BitVec 32)) Bool)

(assert (=> b!914950 (= res!617043 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapIsEmpty!30576 () Bool)

(assert (=> mapIsEmpty!30576 mapRes!30576))

(assert (= (and start!78510 res!617039) b!914949))

(assert (= (and b!914949 res!617038) b!914950))

(assert (= (and b!914950 res!617043) b!914946))

(assert (= (and b!914946 res!617040) b!914944))

(assert (= (and b!914944 res!617041) b!914947))

(assert (= (and b!914947 (not res!617042)) b!914948))

(assert (= (and b!914945 condMapEmpty!30576) mapIsEmpty!30576))

(assert (= (and b!914945 (not condMapEmpty!30576)) mapNonEmpty!30576))

(get-info :version)

(assert (= (and mapNonEmpty!30576 ((_ is ValueCellFull!9126) mapValue!30576)) b!914943))

(assert (= (and b!914945 ((_ is ValueCellFull!9126) mapDefault!30576)) b!914942))

(assert (= start!78510 b!914945))

(declare-fun m!849535 () Bool)

(assert (=> mapNonEmpty!30576 m!849535))

(declare-fun m!849537 () Bool)

(assert (=> start!78510 m!849537))

(declare-fun m!849539 () Bool)

(assert (=> start!78510 m!849539))

(declare-fun m!849541 () Bool)

(assert (=> start!78510 m!849541))

(declare-fun m!849543 () Bool)

(assert (=> b!914948 m!849543))

(declare-fun m!849545 () Bool)

(assert (=> b!914944 m!849545))

(declare-fun m!849547 () Bool)

(assert (=> b!914950 m!849547))

(declare-fun m!849549 () Bool)

(assert (=> b!914947 m!849549))

(check-sat (not b!914947) tp_is_empty!19215 (not b!914948) (not start!78510) (not b!914944) (not b!914950) (not mapNonEmpty!30576))
(check-sat)
(get-model)

(declare-fun d!112659 () Bool)

(declare-fun lt!411560 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!407 (List!18473) (InoxSet (_ BitVec 64)))

(assert (=> d!112659 (= lt!411560 (select (content!407 Nil!18470) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!513465 () Bool)

(assert (=> d!112659 (= lt!411560 e!513465)))

(declare-fun res!617066 () Bool)

(assert (=> d!112659 (=> (not res!617066) (not e!513465))))

(assert (=> d!112659 (= res!617066 ((_ is Cons!18469) Nil!18470))))

(assert (=> d!112659 (= (contains!4705 Nil!18470 #b1000000000000000000000000000000000000000000000000000000000000000) lt!411560)))

(declare-fun b!914982 () Bool)

(declare-fun e!513466 () Bool)

(assert (=> b!914982 (= e!513465 e!513466)))

(declare-fun res!617067 () Bool)

(assert (=> b!914982 (=> res!617067 e!513466)))

(assert (=> b!914982 (= res!617067 (= (h!19615 Nil!18470) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!914983 () Bool)

(assert (=> b!914983 (= e!513466 (contains!4705 (t!26094 Nil!18470) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!112659 res!617066) b!914982))

(assert (= (and b!914982 (not res!617067)) b!914983))

(declare-fun m!849567 () Bool)

(assert (=> d!112659 m!849567))

(declare-fun m!849569 () Bool)

(assert (=> d!112659 m!849569))

(declare-fun m!849571 () Bool)

(assert (=> b!914983 m!849571))

(assert (=> b!914948 d!112659))

(declare-fun d!112661 () Bool)

(assert (=> d!112661 (= (validMask!0 mask!1881) (and (or (= mask!1881 #b00000000000000000000000000000111) (= mask!1881 #b00000000000000000000000000001111) (= mask!1881 #b00000000000000000000000000011111) (= mask!1881 #b00000000000000000000000000111111) (= mask!1881 #b00000000000000000000000001111111) (= mask!1881 #b00000000000000000000000011111111) (= mask!1881 #b00000000000000000000000111111111) (= mask!1881 #b00000000000000000000001111111111) (= mask!1881 #b00000000000000000000011111111111) (= mask!1881 #b00000000000000000000111111111111) (= mask!1881 #b00000000000000000001111111111111) (= mask!1881 #b00000000000000000011111111111111) (= mask!1881 #b00000000000000000111111111111111) (= mask!1881 #b00000000000000001111111111111111) (= mask!1881 #b00000000000000011111111111111111) (= mask!1881 #b00000000000000111111111111111111) (= mask!1881 #b00000000000001111111111111111111) (= mask!1881 #b00000000000011111111111111111111) (= mask!1881 #b00000000000111111111111111111111) (= mask!1881 #b00000000001111111111111111111111) (= mask!1881 #b00000000011111111111111111111111) (= mask!1881 #b00000000111111111111111111111111) (= mask!1881 #b00000001111111111111111111111111) (= mask!1881 #b00000011111111111111111111111111) (= mask!1881 #b00000111111111111111111111111111) (= mask!1881 #b00001111111111111111111111111111) (= mask!1881 #b00011111111111111111111111111111) (= mask!1881 #b00111111111111111111111111111111)) (bvsle mask!1881 #b00111111111111111111111111111111)))))

(assert (=> start!78510 d!112661))

(declare-fun d!112663 () Bool)

(assert (=> d!112663 (= (array_inv!20414 _values!1231) (bvsge (size!26623 _values!1231) #b00000000000000000000000000000000))))

(assert (=> start!78510 d!112663))

(declare-fun d!112665 () Bool)

(assert (=> d!112665 (= (array_inv!20415 _keys!1487) (bvsge (size!26624 _keys!1487) #b00000000000000000000000000000000))))

(assert (=> start!78510 d!112665))

(declare-fun d!112667 () Bool)

(declare-fun res!617072 () Bool)

(declare-fun e!513471 () Bool)

(assert (=> d!112667 (=> res!617072 e!513471)))

(assert (=> d!112667 (= res!617072 ((_ is Nil!18470) Nil!18470))))

(assert (=> d!112667 (= (noDuplicate!1333 Nil!18470) e!513471)))

(declare-fun b!914988 () Bool)

(declare-fun e!513472 () Bool)

(assert (=> b!914988 (= e!513471 e!513472)))

(declare-fun res!617073 () Bool)

(assert (=> b!914988 (=> (not res!617073) (not e!513472))))

(assert (=> b!914988 (= res!617073 (not (contains!4705 (t!26094 Nil!18470) (h!19615 Nil!18470))))))

(declare-fun b!914989 () Bool)

(assert (=> b!914989 (= e!513472 (noDuplicate!1333 (t!26094 Nil!18470)))))

(assert (= (and d!112667 (not res!617072)) b!914988))

(assert (= (and b!914988 res!617073) b!914989))

(declare-fun m!849573 () Bool)

(assert (=> b!914988 m!849573))

(declare-fun m!849575 () Bool)

(assert (=> b!914989 m!849575))

(assert (=> b!914944 d!112667))

(declare-fun b!914998 () Bool)

(declare-fun e!513479 () Bool)

(declare-fun call!40549 () Bool)

(assert (=> b!914998 (= e!513479 call!40549)))

(declare-fun b!914999 () Bool)

(declare-fun e!513481 () Bool)

(assert (=> b!914999 (= e!513481 e!513479)))

(declare-fun lt!411568 () (_ BitVec 64))

(assert (=> b!914999 (= lt!411568 (select (arr!26164 _keys!1487) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!30937 0))(
  ( (Unit!30938) )
))
(declare-fun lt!411569 () Unit!30937)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!54444 (_ BitVec 64) (_ BitVec 32)) Unit!30937)

(assert (=> b!914999 (= lt!411569 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1487 lt!411568 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!54444 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!914999 (arrayContainsKey!0 _keys!1487 lt!411568 #b00000000000000000000000000000000)))

(declare-fun lt!411567 () Unit!30937)

(assert (=> b!914999 (= lt!411567 lt!411569)))

(declare-fun res!617079 () Bool)

(declare-datatypes ((SeekEntryResult!8962 0))(
  ( (MissingZero!8962 (index!38218 (_ BitVec 32))) (Found!8962 (index!38219 (_ BitVec 32))) (Intermediate!8962 (undefined!9774 Bool) (index!38220 (_ BitVec 32)) (x!78270 (_ BitVec 32))) (Undefined!8962) (MissingVacant!8962 (index!38221 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!54444 (_ BitVec 32)) SeekEntryResult!8962)

(assert (=> b!914999 (= res!617079 (= (seekEntryOrOpen!0 (select (arr!26164 _keys!1487) #b00000000000000000000000000000000) _keys!1487 mask!1881) (Found!8962 #b00000000000000000000000000000000)))))

(assert (=> b!914999 (=> (not res!617079) (not e!513479))))

(declare-fun bm!40546 () Bool)

(assert (=> bm!40546 (= call!40549 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1487 mask!1881))))

(declare-fun b!915000 () Bool)

(declare-fun e!513480 () Bool)

(assert (=> b!915000 (= e!513480 e!513481)))

(declare-fun c!95969 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!915000 (= c!95969 (validKeyInArray!0 (select (arr!26164 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun d!112669 () Bool)

(declare-fun res!617078 () Bool)

(assert (=> d!112669 (=> res!617078 e!513480)))

(assert (=> d!112669 (= res!617078 (bvsge #b00000000000000000000000000000000 (size!26624 _keys!1487)))))

(assert (=> d!112669 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881) e!513480)))

(declare-fun b!915001 () Bool)

(assert (=> b!915001 (= e!513481 call!40549)))

(assert (= (and d!112669 (not res!617078)) b!915000))

(assert (= (and b!915000 c!95969) b!914999))

(assert (= (and b!915000 (not c!95969)) b!915001))

(assert (= (and b!914999 res!617079) b!914998))

(assert (= (or b!914998 b!915001) bm!40546))

(declare-fun m!849577 () Bool)

(assert (=> b!914999 m!849577))

(declare-fun m!849579 () Bool)

(assert (=> b!914999 m!849579))

(declare-fun m!849581 () Bool)

(assert (=> b!914999 m!849581))

(assert (=> b!914999 m!849577))

(declare-fun m!849583 () Bool)

(assert (=> b!914999 m!849583))

(declare-fun m!849585 () Bool)

(assert (=> bm!40546 m!849585))

(assert (=> b!915000 m!849577))

(assert (=> b!915000 m!849577))

(declare-fun m!849587 () Bool)

(assert (=> b!915000 m!849587))

(assert (=> b!914950 d!112669))

(declare-fun d!112671 () Bool)

(declare-fun lt!411570 () Bool)

(assert (=> d!112671 (= lt!411570 (select (content!407 Nil!18470) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!513482 () Bool)

(assert (=> d!112671 (= lt!411570 e!513482)))

(declare-fun res!617080 () Bool)

(assert (=> d!112671 (=> (not res!617080) (not e!513482))))

(assert (=> d!112671 (= res!617080 ((_ is Cons!18469) Nil!18470))))

(assert (=> d!112671 (= (contains!4705 Nil!18470 #b0000000000000000000000000000000000000000000000000000000000000000) lt!411570)))

(declare-fun b!915002 () Bool)

(declare-fun e!513483 () Bool)

(assert (=> b!915002 (= e!513482 e!513483)))

(declare-fun res!617081 () Bool)

(assert (=> b!915002 (=> res!617081 e!513483)))

(assert (=> b!915002 (= res!617081 (= (h!19615 Nil!18470) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!915003 () Bool)

(assert (=> b!915003 (= e!513483 (contains!4705 (t!26094 Nil!18470) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!112671 res!617080) b!915002))

(assert (= (and b!915002 (not res!617081)) b!915003))

(assert (=> d!112671 m!849567))

(declare-fun m!849589 () Bool)

(assert (=> d!112671 m!849589))

(declare-fun m!849591 () Bool)

(assert (=> b!915003 m!849591))

(assert (=> b!914947 d!112671))

(declare-fun b!915011 () Bool)

(declare-fun e!513489 () Bool)

(assert (=> b!915011 (= e!513489 tp_is_empty!19215)))

(declare-fun condMapEmpty!30582 () Bool)

(declare-fun mapDefault!30582 () ValueCell!9126)

(assert (=> mapNonEmpty!30576 (= condMapEmpty!30582 (= mapRest!30576 ((as const (Array (_ BitVec 32) ValueCell!9126)) mapDefault!30582)))))

(declare-fun mapRes!30582 () Bool)

(assert (=> mapNonEmpty!30576 (= tp!58644 (and e!513489 mapRes!30582))))

(declare-fun mapIsEmpty!30582 () Bool)

(assert (=> mapIsEmpty!30582 mapRes!30582))

(declare-fun b!915010 () Bool)

(declare-fun e!513488 () Bool)

(assert (=> b!915010 (= e!513488 tp_is_empty!19215)))

(declare-fun mapNonEmpty!30582 () Bool)

(declare-fun tp!58650 () Bool)

(assert (=> mapNonEmpty!30582 (= mapRes!30582 (and tp!58650 e!513488))))

(declare-fun mapRest!30582 () (Array (_ BitVec 32) ValueCell!9126))

(declare-fun mapKey!30582 () (_ BitVec 32))

(declare-fun mapValue!30582 () ValueCell!9126)

(assert (=> mapNonEmpty!30582 (= mapRest!30576 (store mapRest!30582 mapKey!30582 mapValue!30582))))

(assert (= (and mapNonEmpty!30576 condMapEmpty!30582) mapIsEmpty!30582))

(assert (= (and mapNonEmpty!30576 (not condMapEmpty!30582)) mapNonEmpty!30582))

(assert (= (and mapNonEmpty!30582 ((_ is ValueCellFull!9126) mapValue!30582)) b!915010))

(assert (= (and mapNonEmpty!30576 ((_ is ValueCellFull!9126) mapDefault!30582)) b!915011))

(declare-fun m!849593 () Bool)

(assert (=> mapNonEmpty!30582 m!849593))

(check-sat (not mapNonEmpty!30582) (not d!112671) (not b!915003) (not b!914989) (not b!914983) (not b!914999) (not d!112659) tp_is_empty!19215 (not bm!40546) (not b!915000) (not b!914988))
(check-sat)
