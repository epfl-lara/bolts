; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70626 () Bool)

(assert start!70626)

(declare-fun b_free!12909 () Bool)

(declare-fun b_next!12909 () Bool)

(assert (=> start!70626 (= b_free!12909 (not b_next!12909))))

(declare-fun tp!45463 () Bool)

(declare-fun b_and!21769 () Bool)

(assert (=> start!70626 (= tp!45463 b_and!21769)))

(declare-fun b!820069 () Bool)

(declare-fun e!455609 () Bool)

(declare-datatypes ((array!45398 0))(
  ( (array!45399 (arr!21748 (Array (_ BitVec 32) (_ BitVec 64))) (size!22169 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45398)

(assert (=> b!820069 (= e!455609 (bvsle #b00000000000000000000000000000000 (size!22169 _keys!976)))))

(declare-fun b!820070 () Bool)

(declare-fun e!455608 () Bool)

(declare-fun e!455611 () Bool)

(declare-fun mapRes!23530 () Bool)

(assert (=> b!820070 (= e!455608 (and e!455611 mapRes!23530))))

(declare-fun condMapEmpty!23530 () Bool)

(declare-datatypes ((V!24493 0))(
  ( (V!24494 (val!7357 Int)) )
))
(declare-datatypes ((ValueCell!6894 0))(
  ( (ValueCellFull!6894 (v!9783 V!24493)) (EmptyCell!6894) )
))
(declare-datatypes ((array!45400 0))(
  ( (array!45401 (arr!21749 (Array (_ BitVec 32) ValueCell!6894)) (size!22170 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45400)

(declare-fun mapDefault!23530 () ValueCell!6894)

(assert (=> b!820070 (= condMapEmpty!23530 (= (arr!21749 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6894)) mapDefault!23530)))))

(declare-fun b!820071 () Bool)

(declare-fun e!455612 () Bool)

(declare-fun tp_is_empty!14619 () Bool)

(assert (=> b!820071 (= e!455612 tp_is_empty!14619)))

(declare-fun mapNonEmpty!23530 () Bool)

(declare-fun tp!45462 () Bool)

(assert (=> mapNonEmpty!23530 (= mapRes!23530 (and tp!45462 e!455612))))

(declare-fun mapRest!23530 () (Array (_ BitVec 32) ValueCell!6894))

(declare-fun mapValue!23530 () ValueCell!6894)

(declare-fun mapKey!23530 () (_ BitVec 32))

(assert (=> mapNonEmpty!23530 (= (arr!21749 _values!788) (store mapRest!23530 mapKey!23530 mapValue!23530))))

(declare-fun mapIsEmpty!23530 () Bool)

(assert (=> mapIsEmpty!23530 mapRes!23530))

(declare-fun b!820072 () Bool)

(declare-datatypes ((tuple2!9698 0))(
  ( (tuple2!9699 (_1!4859 (_ BitVec 64)) (_2!4859 V!24493)) )
))
(declare-datatypes ((List!15556 0))(
  ( (Nil!15553) (Cons!15552 (h!16681 tuple2!9698) (t!21895 List!15556)) )
))
(declare-datatypes ((ListLongMap!8535 0))(
  ( (ListLongMap!8536 (toList!4283 List!15556)) )
))
(declare-fun lt!368522 () ListLongMap!8535)

(declare-fun zeroValueAfter!34 () V!24493)

(declare-fun e!455610 () Bool)

(declare-fun lt!368524 () ListLongMap!8535)

(declare-fun +!1824 (ListLongMap!8535 tuple2!9698) ListLongMap!8535)

(assert (=> b!820072 (= e!455610 (= lt!368524 (+!1824 lt!368522 (tuple2!9699 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!820073 () Bool)

(declare-fun res!559698 () Bool)

(declare-fun e!455613 () Bool)

(assert (=> b!820073 (=> (not res!559698) (not e!455613))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45398 (_ BitVec 32)) Bool)

(assert (=> b!820073 (= res!559698 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!559696 () Bool)

(assert (=> start!70626 (=> (not res!559696) (not e!455613))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70626 (= res!559696 (validMask!0 mask!1312))))

(assert (=> start!70626 e!455613))

(assert (=> start!70626 tp_is_empty!14619))

(declare-fun array_inv!17351 (array!45398) Bool)

(assert (=> start!70626 (array_inv!17351 _keys!976)))

(assert (=> start!70626 true))

(declare-fun array_inv!17352 (array!45400) Bool)

(assert (=> start!70626 (and (array_inv!17352 _values!788) e!455608)))

(assert (=> start!70626 tp!45463))

(declare-fun b!820074 () Bool)

(declare-fun e!455615 () Bool)

(assert (=> b!820074 (= e!455615 e!455609)))

(declare-fun res!559697 () Bool)

(assert (=> b!820074 (=> res!559697 e!455609)))

(declare-fun lt!368525 () tuple2!9698)

(declare-fun lt!368523 () tuple2!9698)

(assert (=> b!820074 (= res!559697 (not (= lt!368524 (+!1824 (+!1824 lt!368522 lt!368523) lt!368525))))))

(declare-fun lt!368517 () ListLongMap!8535)

(declare-fun lt!368521 () ListLongMap!8535)

(assert (=> b!820074 (= (+!1824 lt!368517 lt!368525) (+!1824 lt!368521 lt!368525))))

(declare-datatypes ((Unit!28017 0))(
  ( (Unit!28018) )
))
(declare-fun lt!368520 () Unit!28017)

(declare-fun zeroValueBefore!34 () V!24493)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!200 (ListLongMap!8535 (_ BitVec 64) V!24493 V!24493) Unit!28017)

(assert (=> b!820074 (= lt!368520 (addSameAsAddTwiceSameKeyDiffValues!200 lt!368517 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!820074 (= lt!368525 (tuple2!9699 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(assert (=> b!820074 e!455610))

(declare-fun res!559699 () Bool)

(assert (=> b!820074 (=> (not res!559699) (not e!455610))))

(declare-fun lt!368519 () ListLongMap!8535)

(assert (=> b!820074 (= res!559699 (= lt!368519 lt!368521))))

(assert (=> b!820074 (= lt!368521 (+!1824 lt!368517 lt!368523))))

(assert (=> b!820074 (= lt!368523 (tuple2!9699 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun minValue!754 () V!24493)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2435 (array!45398 array!45400 (_ BitVec 32) (_ BitVec 32) V!24493 V!24493 (_ BitVec 32) Int) ListLongMap!8535)

(assert (=> b!820074 (= lt!368524 (getCurrentListMap!2435 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!820074 (= lt!368519 (getCurrentListMap!2435 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!820075 () Bool)

(assert (=> b!820075 (= e!455613 (not e!455615))))

(declare-fun res!559695 () Bool)

(assert (=> b!820075 (=> res!559695 e!455615)))

(assert (=> b!820075 (= res!559695 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!820075 (= lt!368517 lt!368522)))

(declare-fun lt!368518 () Unit!28017)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!433 (array!45398 array!45400 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24493 V!24493 V!24493 V!24493 (_ BitVec 32) Int) Unit!28017)

(assert (=> b!820075 (= lt!368518 (lemmaNoChangeToArrayThenSameMapNoExtras!433 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2317 (array!45398 array!45400 (_ BitVec 32) (_ BitVec 32) V!24493 V!24493 (_ BitVec 32) Int) ListLongMap!8535)

(assert (=> b!820075 (= lt!368522 (getCurrentListMapNoExtraKeys!2317 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!820075 (= lt!368517 (getCurrentListMapNoExtraKeys!2317 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!820076 () Bool)

(assert (=> b!820076 (= e!455611 tp_is_empty!14619)))

(declare-fun b!820077 () Bool)

(declare-fun res!559693 () Bool)

(assert (=> b!820077 (=> (not res!559693) (not e!455613))))

(declare-datatypes ((List!15557 0))(
  ( (Nil!15554) (Cons!15553 (h!16682 (_ BitVec 64)) (t!21896 List!15557)) )
))
(declare-fun arrayNoDuplicates!0 (array!45398 (_ BitVec 32) List!15557) Bool)

(assert (=> b!820077 (= res!559693 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15554))))

(declare-fun b!820078 () Bool)

(declare-fun res!559694 () Bool)

(assert (=> b!820078 (=> (not res!559694) (not e!455613))))

(assert (=> b!820078 (= res!559694 (and (= (size!22170 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22169 _keys!976) (size!22170 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(assert (= (and start!70626 res!559696) b!820078))

(assert (= (and b!820078 res!559694) b!820073))

(assert (= (and b!820073 res!559698) b!820077))

(assert (= (and b!820077 res!559693) b!820075))

(assert (= (and b!820075 (not res!559695)) b!820074))

(assert (= (and b!820074 res!559699) b!820072))

(assert (= (and b!820074 (not res!559697)) b!820069))

(assert (= (and b!820070 condMapEmpty!23530) mapIsEmpty!23530))

(assert (= (and b!820070 (not condMapEmpty!23530)) mapNonEmpty!23530))

(get-info :version)

(assert (= (and mapNonEmpty!23530 ((_ is ValueCellFull!6894) mapValue!23530)) b!820071))

(assert (= (and b!820070 ((_ is ValueCellFull!6894) mapDefault!23530)) b!820076))

(assert (= start!70626 b!820070))

(declare-fun m!762041 () Bool)

(assert (=> b!820072 m!762041))

(declare-fun m!762043 () Bool)

(assert (=> b!820077 m!762043))

(declare-fun m!762045 () Bool)

(assert (=> b!820073 m!762045))

(declare-fun m!762047 () Bool)

(assert (=> b!820075 m!762047))

(declare-fun m!762049 () Bool)

(assert (=> b!820075 m!762049))

(declare-fun m!762051 () Bool)

(assert (=> b!820075 m!762051))

(declare-fun m!762053 () Bool)

(assert (=> mapNonEmpty!23530 m!762053))

(declare-fun m!762055 () Bool)

(assert (=> b!820074 m!762055))

(declare-fun m!762057 () Bool)

(assert (=> b!820074 m!762057))

(declare-fun m!762059 () Bool)

(assert (=> b!820074 m!762059))

(assert (=> b!820074 m!762059))

(declare-fun m!762061 () Bool)

(assert (=> b!820074 m!762061))

(declare-fun m!762063 () Bool)

(assert (=> b!820074 m!762063))

(declare-fun m!762065 () Bool)

(assert (=> b!820074 m!762065))

(declare-fun m!762067 () Bool)

(assert (=> b!820074 m!762067))

(declare-fun m!762069 () Bool)

(assert (=> b!820074 m!762069))

(declare-fun m!762071 () Bool)

(assert (=> start!70626 m!762071))

(declare-fun m!762073 () Bool)

(assert (=> start!70626 m!762073))

(declare-fun m!762075 () Bool)

(assert (=> start!70626 m!762075))

(check-sat tp_is_empty!14619 (not b!820077) (not b!820075) b_and!21769 (not mapNonEmpty!23530) (not b!820074) (not b_next!12909) (not start!70626) (not b!820072) (not b!820073))
(check-sat b_and!21769 (not b_next!12909))
(get-model)

(declare-fun d!104627 () Bool)

(declare-fun e!455642 () Bool)

(assert (=> d!104627 e!455642))

(declare-fun res!559725 () Bool)

(assert (=> d!104627 (=> (not res!559725) (not e!455642))))

(declare-fun lt!368561 () ListLongMap!8535)

(declare-fun contains!4162 (ListLongMap!8535 (_ BitVec 64)) Bool)

(assert (=> d!104627 (= res!559725 (contains!4162 lt!368561 (_1!4859 lt!368523)))))

(declare-fun lt!368562 () List!15556)

(assert (=> d!104627 (= lt!368561 (ListLongMap!8536 lt!368562))))

(declare-fun lt!368564 () Unit!28017)

(declare-fun lt!368563 () Unit!28017)

(assert (=> d!104627 (= lt!368564 lt!368563)))

(declare-datatypes ((Option!408 0))(
  ( (Some!407 (v!9785 V!24493)) (None!406) )
))
(declare-fun getValueByKey!402 (List!15556 (_ BitVec 64)) Option!408)

(assert (=> d!104627 (= (getValueByKey!402 lt!368562 (_1!4859 lt!368523)) (Some!407 (_2!4859 lt!368523)))))

(declare-fun lemmaContainsTupThenGetReturnValue!218 (List!15556 (_ BitVec 64) V!24493) Unit!28017)

(assert (=> d!104627 (= lt!368563 (lemmaContainsTupThenGetReturnValue!218 lt!368562 (_1!4859 lt!368523) (_2!4859 lt!368523)))))

(declare-fun insertStrictlySorted!256 (List!15556 (_ BitVec 64) V!24493) List!15556)

(assert (=> d!104627 (= lt!368562 (insertStrictlySorted!256 (toList!4283 lt!368517) (_1!4859 lt!368523) (_2!4859 lt!368523)))))

(assert (=> d!104627 (= (+!1824 lt!368517 lt!368523) lt!368561)))

(declare-fun b!820113 () Bool)

(declare-fun res!559726 () Bool)

(assert (=> b!820113 (=> (not res!559726) (not e!455642))))

(assert (=> b!820113 (= res!559726 (= (getValueByKey!402 (toList!4283 lt!368561) (_1!4859 lt!368523)) (Some!407 (_2!4859 lt!368523))))))

(declare-fun b!820114 () Bool)

(declare-fun contains!4163 (List!15556 tuple2!9698) Bool)

(assert (=> b!820114 (= e!455642 (contains!4163 (toList!4283 lt!368561) lt!368523))))

(assert (= (and d!104627 res!559725) b!820113))

(assert (= (and b!820113 res!559726) b!820114))

(declare-fun m!762113 () Bool)

(assert (=> d!104627 m!762113))

(declare-fun m!762115 () Bool)

(assert (=> d!104627 m!762115))

(declare-fun m!762117 () Bool)

(assert (=> d!104627 m!762117))

(declare-fun m!762119 () Bool)

(assert (=> d!104627 m!762119))

(declare-fun m!762121 () Bool)

(assert (=> b!820113 m!762121))

(declare-fun m!762123 () Bool)

(assert (=> b!820114 m!762123))

(assert (=> b!820074 d!104627))

(declare-fun d!104629 () Bool)

(declare-fun e!455643 () Bool)

(assert (=> d!104629 e!455643))

(declare-fun res!559727 () Bool)

(assert (=> d!104629 (=> (not res!559727) (not e!455643))))

(declare-fun lt!368565 () ListLongMap!8535)

(assert (=> d!104629 (= res!559727 (contains!4162 lt!368565 (_1!4859 lt!368525)))))

(declare-fun lt!368566 () List!15556)

(assert (=> d!104629 (= lt!368565 (ListLongMap!8536 lt!368566))))

(declare-fun lt!368568 () Unit!28017)

(declare-fun lt!368567 () Unit!28017)

(assert (=> d!104629 (= lt!368568 lt!368567)))

(assert (=> d!104629 (= (getValueByKey!402 lt!368566 (_1!4859 lt!368525)) (Some!407 (_2!4859 lt!368525)))))

(assert (=> d!104629 (= lt!368567 (lemmaContainsTupThenGetReturnValue!218 lt!368566 (_1!4859 lt!368525) (_2!4859 lt!368525)))))

(assert (=> d!104629 (= lt!368566 (insertStrictlySorted!256 (toList!4283 lt!368521) (_1!4859 lt!368525) (_2!4859 lt!368525)))))

(assert (=> d!104629 (= (+!1824 lt!368521 lt!368525) lt!368565)))

(declare-fun b!820115 () Bool)

(declare-fun res!559728 () Bool)

(assert (=> b!820115 (=> (not res!559728) (not e!455643))))

(assert (=> b!820115 (= res!559728 (= (getValueByKey!402 (toList!4283 lt!368565) (_1!4859 lt!368525)) (Some!407 (_2!4859 lt!368525))))))

(declare-fun b!820116 () Bool)

(assert (=> b!820116 (= e!455643 (contains!4163 (toList!4283 lt!368565) lt!368525))))

(assert (= (and d!104629 res!559727) b!820115))

(assert (= (and b!820115 res!559728) b!820116))

(declare-fun m!762125 () Bool)

(assert (=> d!104629 m!762125))

(declare-fun m!762127 () Bool)

(assert (=> d!104629 m!762127))

(declare-fun m!762129 () Bool)

(assert (=> d!104629 m!762129))

(declare-fun m!762131 () Bool)

(assert (=> d!104629 m!762131))

(declare-fun m!762133 () Bool)

(assert (=> b!820115 m!762133))

(declare-fun m!762135 () Bool)

(assert (=> b!820116 m!762135))

(assert (=> b!820074 d!104629))

(declare-fun d!104631 () Bool)

(declare-fun e!455644 () Bool)

(assert (=> d!104631 e!455644))

(declare-fun res!559729 () Bool)

(assert (=> d!104631 (=> (not res!559729) (not e!455644))))

(declare-fun lt!368569 () ListLongMap!8535)

(assert (=> d!104631 (= res!559729 (contains!4162 lt!368569 (_1!4859 lt!368523)))))

(declare-fun lt!368570 () List!15556)

(assert (=> d!104631 (= lt!368569 (ListLongMap!8536 lt!368570))))

(declare-fun lt!368572 () Unit!28017)

(declare-fun lt!368571 () Unit!28017)

(assert (=> d!104631 (= lt!368572 lt!368571)))

(assert (=> d!104631 (= (getValueByKey!402 lt!368570 (_1!4859 lt!368523)) (Some!407 (_2!4859 lt!368523)))))

(assert (=> d!104631 (= lt!368571 (lemmaContainsTupThenGetReturnValue!218 lt!368570 (_1!4859 lt!368523) (_2!4859 lt!368523)))))

(assert (=> d!104631 (= lt!368570 (insertStrictlySorted!256 (toList!4283 lt!368522) (_1!4859 lt!368523) (_2!4859 lt!368523)))))

(assert (=> d!104631 (= (+!1824 lt!368522 lt!368523) lt!368569)))

(declare-fun b!820117 () Bool)

(declare-fun res!559730 () Bool)

(assert (=> b!820117 (=> (not res!559730) (not e!455644))))

(assert (=> b!820117 (= res!559730 (= (getValueByKey!402 (toList!4283 lt!368569) (_1!4859 lt!368523)) (Some!407 (_2!4859 lt!368523))))))

(declare-fun b!820118 () Bool)

(assert (=> b!820118 (= e!455644 (contains!4163 (toList!4283 lt!368569) lt!368523))))

(assert (= (and d!104631 res!559729) b!820117))

(assert (= (and b!820117 res!559730) b!820118))

(declare-fun m!762137 () Bool)

(assert (=> d!104631 m!762137))

(declare-fun m!762139 () Bool)

(assert (=> d!104631 m!762139))

(declare-fun m!762141 () Bool)

(assert (=> d!104631 m!762141))

(declare-fun m!762143 () Bool)

(assert (=> d!104631 m!762143))

(declare-fun m!762145 () Bool)

(assert (=> b!820117 m!762145))

(declare-fun m!762147 () Bool)

(assert (=> b!820118 m!762147))

(assert (=> b!820074 d!104631))

(declare-fun d!104633 () Bool)

(declare-fun e!455645 () Bool)

(assert (=> d!104633 e!455645))

(declare-fun res!559731 () Bool)

(assert (=> d!104633 (=> (not res!559731) (not e!455645))))

(declare-fun lt!368573 () ListLongMap!8535)

(assert (=> d!104633 (= res!559731 (contains!4162 lt!368573 (_1!4859 lt!368525)))))

(declare-fun lt!368574 () List!15556)

(assert (=> d!104633 (= lt!368573 (ListLongMap!8536 lt!368574))))

(declare-fun lt!368576 () Unit!28017)

(declare-fun lt!368575 () Unit!28017)

(assert (=> d!104633 (= lt!368576 lt!368575)))

(assert (=> d!104633 (= (getValueByKey!402 lt!368574 (_1!4859 lt!368525)) (Some!407 (_2!4859 lt!368525)))))

(assert (=> d!104633 (= lt!368575 (lemmaContainsTupThenGetReturnValue!218 lt!368574 (_1!4859 lt!368525) (_2!4859 lt!368525)))))

(assert (=> d!104633 (= lt!368574 (insertStrictlySorted!256 (toList!4283 (+!1824 lt!368522 lt!368523)) (_1!4859 lt!368525) (_2!4859 lt!368525)))))

(assert (=> d!104633 (= (+!1824 (+!1824 lt!368522 lt!368523) lt!368525) lt!368573)))

(declare-fun b!820119 () Bool)

(declare-fun res!559732 () Bool)

(assert (=> b!820119 (=> (not res!559732) (not e!455645))))

(assert (=> b!820119 (= res!559732 (= (getValueByKey!402 (toList!4283 lt!368573) (_1!4859 lt!368525)) (Some!407 (_2!4859 lt!368525))))))

(declare-fun b!820120 () Bool)

(assert (=> b!820120 (= e!455645 (contains!4163 (toList!4283 lt!368573) lt!368525))))

(assert (= (and d!104633 res!559731) b!820119))

(assert (= (and b!820119 res!559732) b!820120))

(declare-fun m!762149 () Bool)

(assert (=> d!104633 m!762149))

(declare-fun m!762151 () Bool)

(assert (=> d!104633 m!762151))

(declare-fun m!762153 () Bool)

(assert (=> d!104633 m!762153))

(declare-fun m!762155 () Bool)

(assert (=> d!104633 m!762155))

(declare-fun m!762157 () Bool)

(assert (=> b!820119 m!762157))

(declare-fun m!762159 () Bool)

(assert (=> b!820120 m!762159))

(assert (=> b!820074 d!104633))

(declare-fun b!820163 () Bool)

(declare-fun e!455676 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!820163 (= e!455676 (validKeyInArray!0 (select (arr!21748 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!820164 () Bool)

(declare-fun e!455678 () Bool)

(declare-fun call!35695 () Bool)

(assert (=> b!820164 (= e!455678 (not call!35695))))

(declare-fun b!820165 () Bool)

(declare-fun res!559756 () Bool)

(declare-fun e!455683 () Bool)

(assert (=> b!820165 (=> (not res!559756) (not e!455683))))

(declare-fun e!455682 () Bool)

(assert (=> b!820165 (= res!559756 e!455682)))

(declare-fun c!89100 () Bool)

(assert (=> b!820165 (= c!89100 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!35686 () Bool)

(declare-fun call!35692 () ListLongMap!8535)

(declare-fun call!35690 () ListLongMap!8535)

(assert (=> bm!35686 (= call!35692 call!35690)))

(declare-fun d!104635 () Bool)

(assert (=> d!104635 e!455683))

(declare-fun res!559751 () Bool)

(assert (=> d!104635 (=> (not res!559751) (not e!455683))))

(assert (=> d!104635 (= res!559751 (or (bvsge #b00000000000000000000000000000000 (size!22169 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22169 _keys!976)))))))

(declare-fun lt!368624 () ListLongMap!8535)

(declare-fun lt!368632 () ListLongMap!8535)

(assert (=> d!104635 (= lt!368624 lt!368632)))

(declare-fun lt!368634 () Unit!28017)

(declare-fun e!455681 () Unit!28017)

(assert (=> d!104635 (= lt!368634 e!455681)))

(declare-fun c!89099 () Bool)

(declare-fun e!455673 () Bool)

(assert (=> d!104635 (= c!89099 e!455673)))

(declare-fun res!559753 () Bool)

(assert (=> d!104635 (=> (not res!559753) (not e!455673))))

(assert (=> d!104635 (= res!559753 (bvslt #b00000000000000000000000000000000 (size!22169 _keys!976)))))

(declare-fun e!455675 () ListLongMap!8535)

(assert (=> d!104635 (= lt!368632 e!455675)))

(declare-fun c!89101 () Bool)

(assert (=> d!104635 (= c!89101 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!104635 (validMask!0 mask!1312)))

(assert (=> d!104635 (= (getCurrentListMap!2435 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!368624)))

(declare-fun b!820166 () Bool)

(assert (=> b!820166 (= e!455673 (validKeyInArray!0 (select (arr!21748 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun bm!35687 () Bool)

(declare-fun call!35693 () ListLongMap!8535)

(declare-fun call!35691 () ListLongMap!8535)

(assert (=> bm!35687 (= call!35693 call!35691)))

(declare-fun bm!35688 () Bool)

(declare-fun call!35694 () ListLongMap!8535)

(assert (=> bm!35688 (= call!35694 call!35693)))

(declare-fun b!820167 () Bool)

(declare-fun res!559752 () Bool)

(assert (=> b!820167 (=> (not res!559752) (not e!455683))))

(declare-fun e!455680 () Bool)

(assert (=> b!820167 (= res!559752 e!455680)))

(declare-fun res!559758 () Bool)

(assert (=> b!820167 (=> res!559758 e!455680)))

(assert (=> b!820167 (= res!559758 (not e!455676))))

(declare-fun res!559755 () Bool)

(assert (=> b!820167 (=> (not res!559755) (not e!455676))))

(assert (=> b!820167 (= res!559755 (bvslt #b00000000000000000000000000000000 (size!22169 _keys!976)))))

(declare-fun b!820168 () Bool)

(declare-fun lt!368637 () Unit!28017)

(assert (=> b!820168 (= e!455681 lt!368637)))

(declare-fun lt!368631 () ListLongMap!8535)

(assert (=> b!820168 (= lt!368631 (getCurrentListMapNoExtraKeys!2317 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!368642 () (_ BitVec 64))

(assert (=> b!820168 (= lt!368642 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!368629 () (_ BitVec 64))

(assert (=> b!820168 (= lt!368629 (select (arr!21748 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!368641 () Unit!28017)

(declare-fun addStillContains!309 (ListLongMap!8535 (_ BitVec 64) V!24493 (_ BitVec 64)) Unit!28017)

(assert (=> b!820168 (= lt!368641 (addStillContains!309 lt!368631 lt!368642 zeroValueBefore!34 lt!368629))))

(assert (=> b!820168 (contains!4162 (+!1824 lt!368631 (tuple2!9699 lt!368642 zeroValueBefore!34)) lt!368629)))

(declare-fun lt!368639 () Unit!28017)

(assert (=> b!820168 (= lt!368639 lt!368641)))

(declare-fun lt!368628 () ListLongMap!8535)

(assert (=> b!820168 (= lt!368628 (getCurrentListMapNoExtraKeys!2317 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!368630 () (_ BitVec 64))

(assert (=> b!820168 (= lt!368630 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!368636 () (_ BitVec 64))

(assert (=> b!820168 (= lt!368636 (select (arr!21748 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!368635 () Unit!28017)

(declare-fun addApplyDifferent!309 (ListLongMap!8535 (_ BitVec 64) V!24493 (_ BitVec 64)) Unit!28017)

(assert (=> b!820168 (= lt!368635 (addApplyDifferent!309 lt!368628 lt!368630 minValue!754 lt!368636))))

(declare-fun apply!355 (ListLongMap!8535 (_ BitVec 64)) V!24493)

(assert (=> b!820168 (= (apply!355 (+!1824 lt!368628 (tuple2!9699 lt!368630 minValue!754)) lt!368636) (apply!355 lt!368628 lt!368636))))

(declare-fun lt!368621 () Unit!28017)

(assert (=> b!820168 (= lt!368621 lt!368635)))

(declare-fun lt!368638 () ListLongMap!8535)

(assert (=> b!820168 (= lt!368638 (getCurrentListMapNoExtraKeys!2317 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!368640 () (_ BitVec 64))

(assert (=> b!820168 (= lt!368640 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!368625 () (_ BitVec 64))

(assert (=> b!820168 (= lt!368625 (select (arr!21748 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!368622 () Unit!28017)

(assert (=> b!820168 (= lt!368622 (addApplyDifferent!309 lt!368638 lt!368640 zeroValueBefore!34 lt!368625))))

(assert (=> b!820168 (= (apply!355 (+!1824 lt!368638 (tuple2!9699 lt!368640 zeroValueBefore!34)) lt!368625) (apply!355 lt!368638 lt!368625))))

(declare-fun lt!368633 () Unit!28017)

(assert (=> b!820168 (= lt!368633 lt!368622)))

(declare-fun lt!368627 () ListLongMap!8535)

(assert (=> b!820168 (= lt!368627 (getCurrentListMapNoExtraKeys!2317 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!368626 () (_ BitVec 64))

(assert (=> b!820168 (= lt!368626 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!368623 () (_ BitVec 64))

(assert (=> b!820168 (= lt!368623 (select (arr!21748 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!820168 (= lt!368637 (addApplyDifferent!309 lt!368627 lt!368626 minValue!754 lt!368623))))

(assert (=> b!820168 (= (apply!355 (+!1824 lt!368627 (tuple2!9699 lt!368626 minValue!754)) lt!368623) (apply!355 lt!368627 lt!368623))))

(declare-fun b!820169 () Bool)

(assert (=> b!820169 (= e!455683 e!455678)))

(declare-fun c!89098 () Bool)

(assert (=> b!820169 (= c!89098 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!455674 () Bool)

(declare-fun b!820170 () Bool)

(declare-fun get!11609 (ValueCell!6894 V!24493) V!24493)

(declare-fun dynLambda!965 (Int (_ BitVec 64)) V!24493)

(assert (=> b!820170 (= e!455674 (= (apply!355 lt!368624 (select (arr!21748 _keys!976) #b00000000000000000000000000000000)) (get!11609 (select (arr!21749 _values!788) #b00000000000000000000000000000000) (dynLambda!965 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!820170 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22170 _values!788)))))

(assert (=> b!820170 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22169 _keys!976)))))

(declare-fun b!820171 () Bool)

(assert (=> b!820171 (= e!455675 (+!1824 call!35690 (tuple2!9699 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun bm!35689 () Bool)

(assert (=> bm!35689 (= call!35691 (getCurrentListMapNoExtraKeys!2317 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!820172 () Bool)

(declare-fun Unit!28021 () Unit!28017)

(assert (=> b!820172 (= e!455681 Unit!28021)))

(declare-fun b!820173 () Bool)

(assert (=> b!820173 (= e!455680 e!455674)))

(declare-fun res!559757 () Bool)

(assert (=> b!820173 (=> (not res!559757) (not e!455674))))

(assert (=> b!820173 (= res!559757 (contains!4162 lt!368624 (select (arr!21748 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!820173 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22169 _keys!976)))))

(declare-fun b!820174 () Bool)

(declare-fun c!89097 () Bool)

(assert (=> b!820174 (= c!89097 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!455679 () ListLongMap!8535)

(declare-fun e!455677 () ListLongMap!8535)

(assert (=> b!820174 (= e!455679 e!455677)))

(declare-fun b!820175 () Bool)

(declare-fun e!455684 () Bool)

(assert (=> b!820175 (= e!455682 e!455684)))

(declare-fun res!559759 () Bool)

(declare-fun call!35689 () Bool)

(assert (=> b!820175 (= res!559759 call!35689)))

(assert (=> b!820175 (=> (not res!559759) (not e!455684))))

(declare-fun b!820176 () Bool)

(assert (=> b!820176 (= e!455679 call!35692)))

(declare-fun b!820177 () Bool)

(assert (=> b!820177 (= e!455675 e!455679)))

(declare-fun c!89096 () Bool)

(assert (=> b!820177 (= c!89096 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!35690 () Bool)

(assert (=> bm!35690 (= call!35689 (contains!4162 lt!368624 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!820178 () Bool)

(assert (=> b!820178 (= e!455677 call!35692)))

(declare-fun b!820179 () Bool)

(declare-fun e!455672 () Bool)

(assert (=> b!820179 (= e!455678 e!455672)))

(declare-fun res!559754 () Bool)

(assert (=> b!820179 (= res!559754 call!35695)))

(assert (=> b!820179 (=> (not res!559754) (not e!455672))))

(declare-fun b!820180 () Bool)

(assert (=> b!820180 (= e!455677 call!35694)))

(declare-fun b!820181 () Bool)

(assert (=> b!820181 (= e!455682 (not call!35689))))

(declare-fun bm!35691 () Bool)

(assert (=> bm!35691 (= call!35690 (+!1824 (ite c!89101 call!35691 (ite c!89096 call!35693 call!35694)) (ite (or c!89101 c!89096) (tuple2!9699 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!9699 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun bm!35692 () Bool)

(assert (=> bm!35692 (= call!35695 (contains!4162 lt!368624 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!820182 () Bool)

(assert (=> b!820182 (= e!455684 (= (apply!355 lt!368624 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!34))))

(declare-fun b!820183 () Bool)

(assert (=> b!820183 (= e!455672 (= (apply!355 lt!368624 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(assert (= (and d!104635 c!89101) b!820171))

(assert (= (and d!104635 (not c!89101)) b!820177))

(assert (= (and b!820177 c!89096) b!820176))

(assert (= (and b!820177 (not c!89096)) b!820174))

(assert (= (and b!820174 c!89097) b!820178))

(assert (= (and b!820174 (not c!89097)) b!820180))

(assert (= (or b!820178 b!820180) bm!35688))

(assert (= (or b!820176 bm!35688) bm!35687))

(assert (= (or b!820176 b!820178) bm!35686))

(assert (= (or b!820171 bm!35687) bm!35689))

(assert (= (or b!820171 bm!35686) bm!35691))

(assert (= (and d!104635 res!559753) b!820166))

(assert (= (and d!104635 c!89099) b!820168))

(assert (= (and d!104635 (not c!89099)) b!820172))

(assert (= (and d!104635 res!559751) b!820167))

(assert (= (and b!820167 res!559755) b!820163))

(assert (= (and b!820167 (not res!559758)) b!820173))

(assert (= (and b!820173 res!559757) b!820170))

(assert (= (and b!820167 res!559752) b!820165))

(assert (= (and b!820165 c!89100) b!820175))

(assert (= (and b!820165 (not c!89100)) b!820181))

(assert (= (and b!820175 res!559759) b!820182))

(assert (= (or b!820175 b!820181) bm!35690))

(assert (= (and b!820165 res!559756) b!820169))

(assert (= (and b!820169 c!89098) b!820179))

(assert (= (and b!820169 (not c!89098)) b!820164))

(assert (= (and b!820179 res!559754) b!820183))

(assert (= (or b!820179 b!820164) bm!35692))

(declare-fun b_lambda!11001 () Bool)

(assert (=> (not b_lambda!11001) (not b!820170)))

(declare-fun t!21899 () Bool)

(declare-fun tb!4199 () Bool)

(assert (=> (and start!70626 (= defaultEntry!796 defaultEntry!796) t!21899) tb!4199))

(declare-fun result!7921 () Bool)

(assert (=> tb!4199 (= result!7921 tp_is_empty!14619)))

(assert (=> b!820170 t!21899))

(declare-fun b_and!21773 () Bool)

(assert (= b_and!21769 (and (=> t!21899 result!7921) b_and!21773)))

(declare-fun m!762161 () Bool)

(assert (=> b!820163 m!762161))

(assert (=> b!820163 m!762161))

(declare-fun m!762163 () Bool)

(assert (=> b!820163 m!762163))

(declare-fun m!762165 () Bool)

(assert (=> b!820171 m!762165))

(declare-fun m!762167 () Bool)

(assert (=> bm!35692 m!762167))

(assert (=> d!104635 m!762071))

(assert (=> bm!35689 m!762051))

(declare-fun m!762169 () Bool)

(assert (=> bm!35691 m!762169))

(declare-fun m!762171 () Bool)

(assert (=> b!820170 m!762171))

(declare-fun m!762173 () Bool)

(assert (=> b!820170 m!762173))

(assert (=> b!820170 m!762171))

(declare-fun m!762175 () Bool)

(assert (=> b!820170 m!762175))

(assert (=> b!820170 m!762161))

(assert (=> b!820170 m!762173))

(assert (=> b!820170 m!762161))

(declare-fun m!762177 () Bool)

(assert (=> b!820170 m!762177))

(assert (=> b!820166 m!762161))

(assert (=> b!820166 m!762161))

(assert (=> b!820166 m!762163))

(declare-fun m!762179 () Bool)

(assert (=> b!820182 m!762179))

(declare-fun m!762181 () Bool)

(assert (=> b!820168 m!762181))

(declare-fun m!762183 () Bool)

(assert (=> b!820168 m!762183))

(declare-fun m!762185 () Bool)

(assert (=> b!820168 m!762185))

(declare-fun m!762187 () Bool)

(assert (=> b!820168 m!762187))

(declare-fun m!762189 () Bool)

(assert (=> b!820168 m!762189))

(declare-fun m!762191 () Bool)

(assert (=> b!820168 m!762191))

(declare-fun m!762193 () Bool)

(assert (=> b!820168 m!762193))

(assert (=> b!820168 m!762191))

(declare-fun m!762195 () Bool)

(assert (=> b!820168 m!762195))

(declare-fun m!762197 () Bool)

(assert (=> b!820168 m!762197))

(declare-fun m!762199 () Bool)

(assert (=> b!820168 m!762199))

(assert (=> b!820168 m!762161))

(assert (=> b!820168 m!762183))

(declare-fun m!762201 () Bool)

(assert (=> b!820168 m!762201))

(declare-fun m!762203 () Bool)

(assert (=> b!820168 m!762203))

(declare-fun m!762205 () Bool)

(assert (=> b!820168 m!762205))

(declare-fun m!762207 () Bool)

(assert (=> b!820168 m!762207))

(assert (=> b!820168 m!762051))

(assert (=> b!820168 m!762203))

(assert (=> b!820168 m!762189))

(declare-fun m!762209 () Bool)

(assert (=> b!820168 m!762209))

(assert (=> b!820173 m!762161))

(assert (=> b!820173 m!762161))

(declare-fun m!762211 () Bool)

(assert (=> b!820173 m!762211))

(declare-fun m!762213 () Bool)

(assert (=> bm!35690 m!762213))

(declare-fun m!762215 () Bool)

(assert (=> b!820183 m!762215))

(assert (=> b!820074 d!104635))

(declare-fun d!104637 () Bool)

(assert (=> d!104637 (= (+!1824 lt!368517 (tuple2!9699 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (+!1824 (+!1824 lt!368517 (tuple2!9699 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34)) (tuple2!9699 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun lt!368645 () Unit!28017)

(declare-fun choose!1403 (ListLongMap!8535 (_ BitVec 64) V!24493 V!24493) Unit!28017)

(assert (=> d!104637 (= lt!368645 (choose!1403 lt!368517 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> d!104637 (= (addSameAsAddTwiceSameKeyDiffValues!200 lt!368517 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34) lt!368645)))

(declare-fun bs!22860 () Bool)

(assert (= bs!22860 d!104637))

(declare-fun m!762217 () Bool)

(assert (=> bs!22860 m!762217))

(declare-fun m!762219 () Bool)

(assert (=> bs!22860 m!762219))

(assert (=> bs!22860 m!762219))

(declare-fun m!762221 () Bool)

(assert (=> bs!22860 m!762221))

(declare-fun m!762223 () Bool)

(assert (=> bs!22860 m!762223))

(assert (=> b!820074 d!104637))

(declare-fun b!820186 () Bool)

(declare-fun e!455689 () Bool)

(assert (=> b!820186 (= e!455689 (validKeyInArray!0 (select (arr!21748 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!820187 () Bool)

(declare-fun e!455691 () Bool)

(declare-fun call!35702 () Bool)

(assert (=> b!820187 (= e!455691 (not call!35702))))

(declare-fun b!820188 () Bool)

(declare-fun res!559765 () Bool)

(declare-fun e!455696 () Bool)

(assert (=> b!820188 (=> (not res!559765) (not e!455696))))

(declare-fun e!455695 () Bool)

(assert (=> b!820188 (= res!559765 e!455695)))

(declare-fun c!89106 () Bool)

(assert (=> b!820188 (= c!89106 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!35693 () Bool)

(declare-fun call!35699 () ListLongMap!8535)

(declare-fun call!35697 () ListLongMap!8535)

(assert (=> bm!35693 (= call!35699 call!35697)))

(declare-fun d!104639 () Bool)

(assert (=> d!104639 e!455696))

(declare-fun res!559760 () Bool)

(assert (=> d!104639 (=> (not res!559760) (not e!455696))))

(assert (=> d!104639 (= res!559760 (or (bvsge #b00000000000000000000000000000000 (size!22169 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22169 _keys!976)))))))

(declare-fun lt!368649 () ListLongMap!8535)

(declare-fun lt!368657 () ListLongMap!8535)

(assert (=> d!104639 (= lt!368649 lt!368657)))

(declare-fun lt!368659 () Unit!28017)

(declare-fun e!455694 () Unit!28017)

(assert (=> d!104639 (= lt!368659 e!455694)))

(declare-fun c!89105 () Bool)

(declare-fun e!455686 () Bool)

(assert (=> d!104639 (= c!89105 e!455686)))

(declare-fun res!559762 () Bool)

(assert (=> d!104639 (=> (not res!559762) (not e!455686))))

(assert (=> d!104639 (= res!559762 (bvslt #b00000000000000000000000000000000 (size!22169 _keys!976)))))

(declare-fun e!455688 () ListLongMap!8535)

(assert (=> d!104639 (= lt!368657 e!455688)))

(declare-fun c!89107 () Bool)

(assert (=> d!104639 (= c!89107 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!104639 (validMask!0 mask!1312)))

(assert (=> d!104639 (= (getCurrentListMap!2435 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!368649)))

(declare-fun b!820189 () Bool)

(assert (=> b!820189 (= e!455686 (validKeyInArray!0 (select (arr!21748 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun bm!35694 () Bool)

(declare-fun call!35700 () ListLongMap!8535)

(declare-fun call!35698 () ListLongMap!8535)

(assert (=> bm!35694 (= call!35700 call!35698)))

(declare-fun bm!35695 () Bool)

(declare-fun call!35701 () ListLongMap!8535)

(assert (=> bm!35695 (= call!35701 call!35700)))

(declare-fun b!820190 () Bool)

(declare-fun res!559761 () Bool)

(assert (=> b!820190 (=> (not res!559761) (not e!455696))))

(declare-fun e!455693 () Bool)

(assert (=> b!820190 (= res!559761 e!455693)))

(declare-fun res!559767 () Bool)

(assert (=> b!820190 (=> res!559767 e!455693)))

(assert (=> b!820190 (= res!559767 (not e!455689))))

(declare-fun res!559764 () Bool)

(assert (=> b!820190 (=> (not res!559764) (not e!455689))))

(assert (=> b!820190 (= res!559764 (bvslt #b00000000000000000000000000000000 (size!22169 _keys!976)))))

(declare-fun b!820191 () Bool)

(declare-fun lt!368662 () Unit!28017)

(assert (=> b!820191 (= e!455694 lt!368662)))

(declare-fun lt!368656 () ListLongMap!8535)

(assert (=> b!820191 (= lt!368656 (getCurrentListMapNoExtraKeys!2317 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!368667 () (_ BitVec 64))

(assert (=> b!820191 (= lt!368667 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!368654 () (_ BitVec 64))

(assert (=> b!820191 (= lt!368654 (select (arr!21748 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!368666 () Unit!28017)

(assert (=> b!820191 (= lt!368666 (addStillContains!309 lt!368656 lt!368667 zeroValueAfter!34 lt!368654))))

(assert (=> b!820191 (contains!4162 (+!1824 lt!368656 (tuple2!9699 lt!368667 zeroValueAfter!34)) lt!368654)))

(declare-fun lt!368664 () Unit!28017)

(assert (=> b!820191 (= lt!368664 lt!368666)))

(declare-fun lt!368653 () ListLongMap!8535)

(assert (=> b!820191 (= lt!368653 (getCurrentListMapNoExtraKeys!2317 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!368655 () (_ BitVec 64))

(assert (=> b!820191 (= lt!368655 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!368661 () (_ BitVec 64))

(assert (=> b!820191 (= lt!368661 (select (arr!21748 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!368660 () Unit!28017)

(assert (=> b!820191 (= lt!368660 (addApplyDifferent!309 lt!368653 lt!368655 minValue!754 lt!368661))))

(assert (=> b!820191 (= (apply!355 (+!1824 lt!368653 (tuple2!9699 lt!368655 minValue!754)) lt!368661) (apply!355 lt!368653 lt!368661))))

(declare-fun lt!368646 () Unit!28017)

(assert (=> b!820191 (= lt!368646 lt!368660)))

(declare-fun lt!368663 () ListLongMap!8535)

(assert (=> b!820191 (= lt!368663 (getCurrentListMapNoExtraKeys!2317 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!368665 () (_ BitVec 64))

(assert (=> b!820191 (= lt!368665 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!368650 () (_ BitVec 64))

(assert (=> b!820191 (= lt!368650 (select (arr!21748 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!368647 () Unit!28017)

(assert (=> b!820191 (= lt!368647 (addApplyDifferent!309 lt!368663 lt!368665 zeroValueAfter!34 lt!368650))))

(assert (=> b!820191 (= (apply!355 (+!1824 lt!368663 (tuple2!9699 lt!368665 zeroValueAfter!34)) lt!368650) (apply!355 lt!368663 lt!368650))))

(declare-fun lt!368658 () Unit!28017)

(assert (=> b!820191 (= lt!368658 lt!368647)))

(declare-fun lt!368652 () ListLongMap!8535)

(assert (=> b!820191 (= lt!368652 (getCurrentListMapNoExtraKeys!2317 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!368651 () (_ BitVec 64))

(assert (=> b!820191 (= lt!368651 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!368648 () (_ BitVec 64))

(assert (=> b!820191 (= lt!368648 (select (arr!21748 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!820191 (= lt!368662 (addApplyDifferent!309 lt!368652 lt!368651 minValue!754 lt!368648))))

(assert (=> b!820191 (= (apply!355 (+!1824 lt!368652 (tuple2!9699 lt!368651 minValue!754)) lt!368648) (apply!355 lt!368652 lt!368648))))

(declare-fun b!820192 () Bool)

(assert (=> b!820192 (= e!455696 e!455691)))

(declare-fun c!89104 () Bool)

(assert (=> b!820192 (= c!89104 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!820193 () Bool)

(declare-fun e!455687 () Bool)

(assert (=> b!820193 (= e!455687 (= (apply!355 lt!368649 (select (arr!21748 _keys!976) #b00000000000000000000000000000000)) (get!11609 (select (arr!21749 _values!788) #b00000000000000000000000000000000) (dynLambda!965 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!820193 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22170 _values!788)))))

(assert (=> b!820193 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22169 _keys!976)))))

(declare-fun b!820194 () Bool)

(assert (=> b!820194 (= e!455688 (+!1824 call!35697 (tuple2!9699 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun bm!35696 () Bool)

(assert (=> bm!35696 (= call!35698 (getCurrentListMapNoExtraKeys!2317 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!820195 () Bool)

(declare-fun Unit!28022 () Unit!28017)

(assert (=> b!820195 (= e!455694 Unit!28022)))

(declare-fun b!820196 () Bool)

(assert (=> b!820196 (= e!455693 e!455687)))

(declare-fun res!559766 () Bool)

(assert (=> b!820196 (=> (not res!559766) (not e!455687))))

(assert (=> b!820196 (= res!559766 (contains!4162 lt!368649 (select (arr!21748 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!820196 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22169 _keys!976)))))

(declare-fun b!820197 () Bool)

(declare-fun c!89103 () Bool)

(assert (=> b!820197 (= c!89103 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!455692 () ListLongMap!8535)

(declare-fun e!455690 () ListLongMap!8535)

(assert (=> b!820197 (= e!455692 e!455690)))

(declare-fun b!820198 () Bool)

(declare-fun e!455697 () Bool)

(assert (=> b!820198 (= e!455695 e!455697)))

(declare-fun res!559768 () Bool)

(declare-fun call!35696 () Bool)

(assert (=> b!820198 (= res!559768 call!35696)))

(assert (=> b!820198 (=> (not res!559768) (not e!455697))))

(declare-fun b!820199 () Bool)

(assert (=> b!820199 (= e!455692 call!35699)))

(declare-fun b!820200 () Bool)

(assert (=> b!820200 (= e!455688 e!455692)))

(declare-fun c!89102 () Bool)

(assert (=> b!820200 (= c!89102 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!35697 () Bool)

(assert (=> bm!35697 (= call!35696 (contains!4162 lt!368649 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!820201 () Bool)

(assert (=> b!820201 (= e!455690 call!35699)))

(declare-fun b!820202 () Bool)

(declare-fun e!455685 () Bool)

(assert (=> b!820202 (= e!455691 e!455685)))

(declare-fun res!559763 () Bool)

(assert (=> b!820202 (= res!559763 call!35702)))

(assert (=> b!820202 (=> (not res!559763) (not e!455685))))

(declare-fun b!820203 () Bool)

(assert (=> b!820203 (= e!455690 call!35701)))

(declare-fun b!820204 () Bool)

(assert (=> b!820204 (= e!455695 (not call!35696))))

(declare-fun bm!35698 () Bool)

(assert (=> bm!35698 (= call!35697 (+!1824 (ite c!89107 call!35698 (ite c!89102 call!35700 call!35701)) (ite (or c!89107 c!89102) (tuple2!9699 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!9699 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun bm!35699 () Bool)

(assert (=> bm!35699 (= call!35702 (contains!4162 lt!368649 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!820205 () Bool)

(assert (=> b!820205 (= e!455697 (= (apply!355 lt!368649 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueAfter!34))))

(declare-fun b!820206 () Bool)

(assert (=> b!820206 (= e!455685 (= (apply!355 lt!368649 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(assert (= (and d!104639 c!89107) b!820194))

(assert (= (and d!104639 (not c!89107)) b!820200))

(assert (= (and b!820200 c!89102) b!820199))

(assert (= (and b!820200 (not c!89102)) b!820197))

(assert (= (and b!820197 c!89103) b!820201))

(assert (= (and b!820197 (not c!89103)) b!820203))

(assert (= (or b!820201 b!820203) bm!35695))

(assert (= (or b!820199 bm!35695) bm!35694))

(assert (= (or b!820199 b!820201) bm!35693))

(assert (= (or b!820194 bm!35694) bm!35696))

(assert (= (or b!820194 bm!35693) bm!35698))

(assert (= (and d!104639 res!559762) b!820189))

(assert (= (and d!104639 c!89105) b!820191))

(assert (= (and d!104639 (not c!89105)) b!820195))

(assert (= (and d!104639 res!559760) b!820190))

(assert (= (and b!820190 res!559764) b!820186))

(assert (= (and b!820190 (not res!559767)) b!820196))

(assert (= (and b!820196 res!559766) b!820193))

(assert (= (and b!820190 res!559761) b!820188))

(assert (= (and b!820188 c!89106) b!820198))

(assert (= (and b!820188 (not c!89106)) b!820204))

(assert (= (and b!820198 res!559768) b!820205))

(assert (= (or b!820198 b!820204) bm!35697))

(assert (= (and b!820188 res!559765) b!820192))

(assert (= (and b!820192 c!89104) b!820202))

(assert (= (and b!820192 (not c!89104)) b!820187))

(assert (= (and b!820202 res!559763) b!820206))

(assert (= (or b!820202 b!820187) bm!35699))

(declare-fun b_lambda!11003 () Bool)

(assert (=> (not b_lambda!11003) (not b!820193)))

(assert (=> b!820193 t!21899))

(declare-fun b_and!21775 () Bool)

(assert (= b_and!21773 (and (=> t!21899 result!7921) b_and!21775)))

(assert (=> b!820186 m!762161))

(assert (=> b!820186 m!762161))

(assert (=> b!820186 m!762163))

(declare-fun m!762225 () Bool)

(assert (=> b!820194 m!762225))

(declare-fun m!762227 () Bool)

(assert (=> bm!35699 m!762227))

(assert (=> d!104639 m!762071))

(assert (=> bm!35696 m!762049))

(declare-fun m!762229 () Bool)

(assert (=> bm!35698 m!762229))

(assert (=> b!820193 m!762171))

(assert (=> b!820193 m!762173))

(assert (=> b!820193 m!762171))

(assert (=> b!820193 m!762175))

(assert (=> b!820193 m!762161))

(assert (=> b!820193 m!762173))

(assert (=> b!820193 m!762161))

(declare-fun m!762231 () Bool)

(assert (=> b!820193 m!762231))

(assert (=> b!820189 m!762161))

(assert (=> b!820189 m!762161))

(assert (=> b!820189 m!762163))

(declare-fun m!762233 () Bool)

(assert (=> b!820205 m!762233))

(declare-fun m!762235 () Bool)

(assert (=> b!820191 m!762235))

(declare-fun m!762237 () Bool)

(assert (=> b!820191 m!762237))

(declare-fun m!762239 () Bool)

(assert (=> b!820191 m!762239))

(declare-fun m!762241 () Bool)

(assert (=> b!820191 m!762241))

(declare-fun m!762243 () Bool)

(assert (=> b!820191 m!762243))

(declare-fun m!762245 () Bool)

(assert (=> b!820191 m!762245))

(declare-fun m!762247 () Bool)

(assert (=> b!820191 m!762247))

(assert (=> b!820191 m!762245))

(declare-fun m!762249 () Bool)

(assert (=> b!820191 m!762249))

(declare-fun m!762251 () Bool)

(assert (=> b!820191 m!762251))

(declare-fun m!762253 () Bool)

(assert (=> b!820191 m!762253))

(assert (=> b!820191 m!762161))

(assert (=> b!820191 m!762237))

(declare-fun m!762255 () Bool)

(assert (=> b!820191 m!762255))

(declare-fun m!762257 () Bool)

(assert (=> b!820191 m!762257))

(declare-fun m!762259 () Bool)

(assert (=> b!820191 m!762259))

(declare-fun m!762261 () Bool)

(assert (=> b!820191 m!762261))

(assert (=> b!820191 m!762049))

(assert (=> b!820191 m!762257))

(assert (=> b!820191 m!762243))

(declare-fun m!762263 () Bool)

(assert (=> b!820191 m!762263))

(assert (=> b!820196 m!762161))

(assert (=> b!820196 m!762161))

(declare-fun m!762265 () Bool)

(assert (=> b!820196 m!762265))

(declare-fun m!762267 () Bool)

(assert (=> bm!35697 m!762267))

(declare-fun m!762269 () Bool)

(assert (=> b!820206 m!762269))

(assert (=> b!820074 d!104639))

(declare-fun d!104641 () Bool)

(declare-fun e!455698 () Bool)

(assert (=> d!104641 e!455698))

(declare-fun res!559769 () Bool)

(assert (=> d!104641 (=> (not res!559769) (not e!455698))))

(declare-fun lt!368668 () ListLongMap!8535)

(assert (=> d!104641 (= res!559769 (contains!4162 lt!368668 (_1!4859 lt!368525)))))

(declare-fun lt!368669 () List!15556)

(assert (=> d!104641 (= lt!368668 (ListLongMap!8536 lt!368669))))

(declare-fun lt!368671 () Unit!28017)

(declare-fun lt!368670 () Unit!28017)

(assert (=> d!104641 (= lt!368671 lt!368670)))

(assert (=> d!104641 (= (getValueByKey!402 lt!368669 (_1!4859 lt!368525)) (Some!407 (_2!4859 lt!368525)))))

(assert (=> d!104641 (= lt!368670 (lemmaContainsTupThenGetReturnValue!218 lt!368669 (_1!4859 lt!368525) (_2!4859 lt!368525)))))

(assert (=> d!104641 (= lt!368669 (insertStrictlySorted!256 (toList!4283 lt!368517) (_1!4859 lt!368525) (_2!4859 lt!368525)))))

(assert (=> d!104641 (= (+!1824 lt!368517 lt!368525) lt!368668)))

(declare-fun b!820207 () Bool)

(declare-fun res!559770 () Bool)

(assert (=> b!820207 (=> (not res!559770) (not e!455698))))

(assert (=> b!820207 (= res!559770 (= (getValueByKey!402 (toList!4283 lt!368668) (_1!4859 lt!368525)) (Some!407 (_2!4859 lt!368525))))))

(declare-fun b!820208 () Bool)

(assert (=> b!820208 (= e!455698 (contains!4163 (toList!4283 lt!368668) lt!368525))))

(assert (= (and d!104641 res!559769) b!820207))

(assert (= (and b!820207 res!559770) b!820208))

(declare-fun m!762271 () Bool)

(assert (=> d!104641 m!762271))

(declare-fun m!762273 () Bool)

(assert (=> d!104641 m!762273))

(declare-fun m!762275 () Bool)

(assert (=> d!104641 m!762275))

(declare-fun m!762277 () Bool)

(assert (=> d!104641 m!762277))

(declare-fun m!762279 () Bool)

(assert (=> b!820207 m!762279))

(declare-fun m!762281 () Bool)

(assert (=> b!820208 m!762281))

(assert (=> b!820074 d!104641))

(declare-fun d!104643 () Bool)

(assert (=> d!104643 (= (getCurrentListMapNoExtraKeys!2317 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (getCurrentListMapNoExtraKeys!2317 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!368674 () Unit!28017)

(declare-fun choose!1404 (array!45398 array!45400 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24493 V!24493 V!24493 V!24493 (_ BitVec 32) Int) Unit!28017)

(assert (=> d!104643 (= lt!368674 (choose!1404 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> d!104643 (validMask!0 mask!1312)))

(assert (=> d!104643 (= (lemmaNoChangeToArrayThenSameMapNoExtras!433 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!368674)))

(declare-fun bs!22861 () Bool)

(assert (= bs!22861 d!104643))

(assert (=> bs!22861 m!762051))

(assert (=> bs!22861 m!762049))

(declare-fun m!762283 () Bool)

(assert (=> bs!22861 m!762283))

(assert (=> bs!22861 m!762071))

(assert (=> b!820075 d!104643))

(declare-fun b!820233 () Bool)

(declare-fun e!455717 () ListLongMap!8535)

(assert (=> b!820233 (= e!455717 (ListLongMap!8536 Nil!15553))))

(declare-fun b!820234 () Bool)

(declare-fun res!559780 () Bool)

(declare-fun e!455716 () Bool)

(assert (=> b!820234 (=> (not res!559780) (not e!455716))))

(declare-fun lt!368694 () ListLongMap!8535)

(assert (=> b!820234 (= res!559780 (not (contains!4162 lt!368694 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!820235 () Bool)

(assert (=> b!820235 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22169 _keys!976)))))

(assert (=> b!820235 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22170 _values!788)))))

(declare-fun e!455718 () Bool)

(assert (=> b!820235 (= e!455718 (= (apply!355 lt!368694 (select (arr!21748 _keys!976) #b00000000000000000000000000000000)) (get!11609 (select (arr!21749 _values!788) #b00000000000000000000000000000000) (dynLambda!965 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!820236 () Bool)

(declare-fun e!455715 () Bool)

(declare-fun isEmpty!642 (ListLongMap!8535) Bool)

(assert (=> b!820236 (= e!455715 (isEmpty!642 lt!368694))))

(declare-fun d!104645 () Bool)

(assert (=> d!104645 e!455716))

(declare-fun res!559779 () Bool)

(assert (=> d!104645 (=> (not res!559779) (not e!455716))))

(assert (=> d!104645 (= res!559779 (not (contains!4162 lt!368694 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!104645 (= lt!368694 e!455717)))

(declare-fun c!89117 () Bool)

(assert (=> d!104645 (= c!89117 (bvsge #b00000000000000000000000000000000 (size!22169 _keys!976)))))

(assert (=> d!104645 (validMask!0 mask!1312)))

(assert (=> d!104645 (= (getCurrentListMapNoExtraKeys!2317 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!368694)))

(declare-fun b!820237 () Bool)

(declare-fun e!455713 () Bool)

(assert (=> b!820237 (= e!455713 (validKeyInArray!0 (select (arr!21748 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!820237 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!820238 () Bool)

(declare-fun lt!368693 () Unit!28017)

(declare-fun lt!368695 () Unit!28017)

(assert (=> b!820238 (= lt!368693 lt!368695)))

(declare-fun lt!368692 () ListLongMap!8535)

(declare-fun lt!368690 () (_ BitVec 64))

(declare-fun lt!368691 () V!24493)

(declare-fun lt!368689 () (_ BitVec 64))

(assert (=> b!820238 (not (contains!4162 (+!1824 lt!368692 (tuple2!9699 lt!368689 lt!368691)) lt!368690))))

(declare-fun addStillNotContains!182 (ListLongMap!8535 (_ BitVec 64) V!24493 (_ BitVec 64)) Unit!28017)

(assert (=> b!820238 (= lt!368695 (addStillNotContains!182 lt!368692 lt!368689 lt!368691 lt!368690))))

(assert (=> b!820238 (= lt!368690 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!820238 (= lt!368691 (get!11609 (select (arr!21749 _values!788) #b00000000000000000000000000000000) (dynLambda!965 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!820238 (= lt!368689 (select (arr!21748 _keys!976) #b00000000000000000000000000000000))))

(declare-fun call!35705 () ListLongMap!8535)

(assert (=> b!820238 (= lt!368692 call!35705)))

(declare-fun e!455714 () ListLongMap!8535)

(assert (=> b!820238 (= e!455714 (+!1824 call!35705 (tuple2!9699 (select (arr!21748 _keys!976) #b00000000000000000000000000000000) (get!11609 (select (arr!21749 _values!788) #b00000000000000000000000000000000) (dynLambda!965 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!820239 () Bool)

(declare-fun e!455719 () Bool)

(assert (=> b!820239 (= e!455719 e!455718)))

(assert (=> b!820239 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22169 _keys!976)))))

(declare-fun res!559781 () Bool)

(assert (=> b!820239 (= res!559781 (contains!4162 lt!368694 (select (arr!21748 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!820239 (=> (not res!559781) (not e!455718))))

(declare-fun b!820240 () Bool)

(assert (=> b!820240 (= e!455716 e!455719)))

(declare-fun c!89118 () Bool)

(assert (=> b!820240 (= c!89118 e!455713)))

(declare-fun res!559782 () Bool)

(assert (=> b!820240 (=> (not res!559782) (not e!455713))))

(assert (=> b!820240 (= res!559782 (bvslt #b00000000000000000000000000000000 (size!22169 _keys!976)))))

(declare-fun b!820241 () Bool)

(assert (=> b!820241 (= e!455714 call!35705)))

(declare-fun b!820242 () Bool)

(assert (=> b!820242 (= e!455719 e!455715)))

(declare-fun c!89119 () Bool)

(assert (=> b!820242 (= c!89119 (bvslt #b00000000000000000000000000000000 (size!22169 _keys!976)))))

(declare-fun b!820243 () Bool)

(assert (=> b!820243 (= e!455717 e!455714)))

(declare-fun c!89116 () Bool)

(assert (=> b!820243 (= c!89116 (validKeyInArray!0 (select (arr!21748 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!820244 () Bool)

(assert (=> b!820244 (= e!455715 (= lt!368694 (getCurrentListMapNoExtraKeys!2317 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun bm!35702 () Bool)

(assert (=> bm!35702 (= call!35705 (getCurrentListMapNoExtraKeys!2317 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(assert (= (and d!104645 c!89117) b!820233))

(assert (= (and d!104645 (not c!89117)) b!820243))

(assert (= (and b!820243 c!89116) b!820238))

(assert (= (and b!820243 (not c!89116)) b!820241))

(assert (= (or b!820238 b!820241) bm!35702))

(assert (= (and d!104645 res!559779) b!820234))

(assert (= (and b!820234 res!559780) b!820240))

(assert (= (and b!820240 res!559782) b!820237))

(assert (= (and b!820240 c!89118) b!820239))

(assert (= (and b!820240 (not c!89118)) b!820242))

(assert (= (and b!820239 res!559781) b!820235))

(assert (= (and b!820242 c!89119) b!820244))

(assert (= (and b!820242 (not c!89119)) b!820236))

(declare-fun b_lambda!11005 () Bool)

(assert (=> (not b_lambda!11005) (not b!820235)))

(assert (=> b!820235 t!21899))

(declare-fun b_and!21777 () Bool)

(assert (= b_and!21775 (and (=> t!21899 result!7921) b_and!21777)))

(declare-fun b_lambda!11007 () Bool)

(assert (=> (not b_lambda!11007) (not b!820238)))

(assert (=> b!820238 t!21899))

(declare-fun b_and!21779 () Bool)

(assert (= b_and!21777 (and (=> t!21899 result!7921) b_and!21779)))

(assert (=> b!820235 m!762171))

(assert (=> b!820235 m!762161))

(declare-fun m!762285 () Bool)

(assert (=> b!820235 m!762285))

(assert (=> b!820235 m!762161))

(assert (=> b!820235 m!762173))

(assert (=> b!820235 m!762173))

(assert (=> b!820235 m!762171))

(assert (=> b!820235 m!762175))

(assert (=> b!820237 m!762161))

(assert (=> b!820237 m!762161))

(assert (=> b!820237 m!762163))

(assert (=> b!820243 m!762161))

(assert (=> b!820243 m!762161))

(assert (=> b!820243 m!762163))

(declare-fun m!762287 () Bool)

(assert (=> b!820234 m!762287))

(declare-fun m!762289 () Bool)

(assert (=> b!820244 m!762289))

(declare-fun m!762291 () Bool)

(assert (=> d!104645 m!762291))

(assert (=> d!104645 m!762071))

(assert (=> b!820239 m!762161))

(assert (=> b!820239 m!762161))

(declare-fun m!762293 () Bool)

(assert (=> b!820239 m!762293))

(assert (=> bm!35702 m!762289))

(assert (=> b!820238 m!762171))

(declare-fun m!762295 () Bool)

(assert (=> b!820238 m!762295))

(declare-fun m!762297 () Bool)

(assert (=> b!820238 m!762297))

(assert (=> b!820238 m!762161))

(assert (=> b!820238 m!762173))

(declare-fun m!762299 () Bool)

(assert (=> b!820238 m!762299))

(declare-fun m!762301 () Bool)

(assert (=> b!820238 m!762301))

(assert (=> b!820238 m!762173))

(assert (=> b!820238 m!762171))

(assert (=> b!820238 m!762175))

(assert (=> b!820238 m!762295))

(declare-fun m!762303 () Bool)

(assert (=> b!820236 m!762303))

(assert (=> b!820075 d!104645))

(declare-fun b!820245 () Bool)

(declare-fun e!455724 () ListLongMap!8535)

(assert (=> b!820245 (= e!455724 (ListLongMap!8536 Nil!15553))))

(declare-fun b!820246 () Bool)

(declare-fun res!559784 () Bool)

(declare-fun e!455723 () Bool)

(assert (=> b!820246 (=> (not res!559784) (not e!455723))))

(declare-fun lt!368701 () ListLongMap!8535)

(assert (=> b!820246 (= res!559784 (not (contains!4162 lt!368701 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!820247 () Bool)

(assert (=> b!820247 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22169 _keys!976)))))

(assert (=> b!820247 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22170 _values!788)))))

(declare-fun e!455725 () Bool)

(assert (=> b!820247 (= e!455725 (= (apply!355 lt!368701 (select (arr!21748 _keys!976) #b00000000000000000000000000000000)) (get!11609 (select (arr!21749 _values!788) #b00000000000000000000000000000000) (dynLambda!965 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!820248 () Bool)

(declare-fun e!455722 () Bool)

(assert (=> b!820248 (= e!455722 (isEmpty!642 lt!368701))))

(declare-fun d!104647 () Bool)

(assert (=> d!104647 e!455723))

(declare-fun res!559783 () Bool)

(assert (=> d!104647 (=> (not res!559783) (not e!455723))))

(assert (=> d!104647 (= res!559783 (not (contains!4162 lt!368701 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!104647 (= lt!368701 e!455724)))

(declare-fun c!89121 () Bool)

(assert (=> d!104647 (= c!89121 (bvsge #b00000000000000000000000000000000 (size!22169 _keys!976)))))

(assert (=> d!104647 (validMask!0 mask!1312)))

(assert (=> d!104647 (= (getCurrentListMapNoExtraKeys!2317 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!368701)))

(declare-fun b!820249 () Bool)

(declare-fun e!455720 () Bool)

(assert (=> b!820249 (= e!455720 (validKeyInArray!0 (select (arr!21748 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!820249 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!820250 () Bool)

(declare-fun lt!368700 () Unit!28017)

(declare-fun lt!368702 () Unit!28017)

(assert (=> b!820250 (= lt!368700 lt!368702)))

(declare-fun lt!368698 () V!24493)

(declare-fun lt!368696 () (_ BitVec 64))

(declare-fun lt!368697 () (_ BitVec 64))

(declare-fun lt!368699 () ListLongMap!8535)

(assert (=> b!820250 (not (contains!4162 (+!1824 lt!368699 (tuple2!9699 lt!368696 lt!368698)) lt!368697))))

(assert (=> b!820250 (= lt!368702 (addStillNotContains!182 lt!368699 lt!368696 lt!368698 lt!368697))))

(assert (=> b!820250 (= lt!368697 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!820250 (= lt!368698 (get!11609 (select (arr!21749 _values!788) #b00000000000000000000000000000000) (dynLambda!965 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!820250 (= lt!368696 (select (arr!21748 _keys!976) #b00000000000000000000000000000000))))

(declare-fun call!35706 () ListLongMap!8535)

(assert (=> b!820250 (= lt!368699 call!35706)))

(declare-fun e!455721 () ListLongMap!8535)

(assert (=> b!820250 (= e!455721 (+!1824 call!35706 (tuple2!9699 (select (arr!21748 _keys!976) #b00000000000000000000000000000000) (get!11609 (select (arr!21749 _values!788) #b00000000000000000000000000000000) (dynLambda!965 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!820251 () Bool)

(declare-fun e!455726 () Bool)

(assert (=> b!820251 (= e!455726 e!455725)))

(assert (=> b!820251 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22169 _keys!976)))))

(declare-fun res!559785 () Bool)

(assert (=> b!820251 (= res!559785 (contains!4162 lt!368701 (select (arr!21748 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!820251 (=> (not res!559785) (not e!455725))))

(declare-fun b!820252 () Bool)

(assert (=> b!820252 (= e!455723 e!455726)))

(declare-fun c!89122 () Bool)

(assert (=> b!820252 (= c!89122 e!455720)))

(declare-fun res!559786 () Bool)

(assert (=> b!820252 (=> (not res!559786) (not e!455720))))

(assert (=> b!820252 (= res!559786 (bvslt #b00000000000000000000000000000000 (size!22169 _keys!976)))))

(declare-fun b!820253 () Bool)

(assert (=> b!820253 (= e!455721 call!35706)))

(declare-fun b!820254 () Bool)

(assert (=> b!820254 (= e!455726 e!455722)))

(declare-fun c!89123 () Bool)

(assert (=> b!820254 (= c!89123 (bvslt #b00000000000000000000000000000000 (size!22169 _keys!976)))))

(declare-fun b!820255 () Bool)

(assert (=> b!820255 (= e!455724 e!455721)))

(declare-fun c!89120 () Bool)

(assert (=> b!820255 (= c!89120 (validKeyInArray!0 (select (arr!21748 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!820256 () Bool)

(assert (=> b!820256 (= e!455722 (= lt!368701 (getCurrentListMapNoExtraKeys!2317 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun bm!35703 () Bool)

(assert (=> bm!35703 (= call!35706 (getCurrentListMapNoExtraKeys!2317 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(assert (= (and d!104647 c!89121) b!820245))

(assert (= (and d!104647 (not c!89121)) b!820255))

(assert (= (and b!820255 c!89120) b!820250))

(assert (= (and b!820255 (not c!89120)) b!820253))

(assert (= (or b!820250 b!820253) bm!35703))

(assert (= (and d!104647 res!559783) b!820246))

(assert (= (and b!820246 res!559784) b!820252))

(assert (= (and b!820252 res!559786) b!820249))

(assert (= (and b!820252 c!89122) b!820251))

(assert (= (and b!820252 (not c!89122)) b!820254))

(assert (= (and b!820251 res!559785) b!820247))

(assert (= (and b!820254 c!89123) b!820256))

(assert (= (and b!820254 (not c!89123)) b!820248))

(declare-fun b_lambda!11009 () Bool)

(assert (=> (not b_lambda!11009) (not b!820247)))

(assert (=> b!820247 t!21899))

(declare-fun b_and!21781 () Bool)

(assert (= b_and!21779 (and (=> t!21899 result!7921) b_and!21781)))

(declare-fun b_lambda!11011 () Bool)

(assert (=> (not b_lambda!11011) (not b!820250)))

(assert (=> b!820250 t!21899))

(declare-fun b_and!21783 () Bool)

(assert (= b_and!21781 (and (=> t!21899 result!7921) b_and!21783)))

(assert (=> b!820247 m!762171))

(assert (=> b!820247 m!762161))

(declare-fun m!762305 () Bool)

(assert (=> b!820247 m!762305))

(assert (=> b!820247 m!762161))

(assert (=> b!820247 m!762173))

(assert (=> b!820247 m!762173))

(assert (=> b!820247 m!762171))

(assert (=> b!820247 m!762175))

(assert (=> b!820249 m!762161))

(assert (=> b!820249 m!762161))

(assert (=> b!820249 m!762163))

(assert (=> b!820255 m!762161))

(assert (=> b!820255 m!762161))

(assert (=> b!820255 m!762163))

(declare-fun m!762307 () Bool)

(assert (=> b!820246 m!762307))

(declare-fun m!762309 () Bool)

(assert (=> b!820256 m!762309))

(declare-fun m!762311 () Bool)

(assert (=> d!104647 m!762311))

(assert (=> d!104647 m!762071))

(assert (=> b!820251 m!762161))

(assert (=> b!820251 m!762161))

(declare-fun m!762313 () Bool)

(assert (=> b!820251 m!762313))

(assert (=> bm!35703 m!762309))

(assert (=> b!820250 m!762171))

(declare-fun m!762315 () Bool)

(assert (=> b!820250 m!762315))

(declare-fun m!762317 () Bool)

(assert (=> b!820250 m!762317))

(assert (=> b!820250 m!762161))

(assert (=> b!820250 m!762173))

(declare-fun m!762319 () Bool)

(assert (=> b!820250 m!762319))

(declare-fun m!762321 () Bool)

(assert (=> b!820250 m!762321))

(assert (=> b!820250 m!762173))

(assert (=> b!820250 m!762171))

(assert (=> b!820250 m!762175))

(assert (=> b!820250 m!762315))

(declare-fun m!762323 () Bool)

(assert (=> b!820248 m!762323))

(assert (=> b!820075 d!104647))

(declare-fun d!104649 () Bool)

(assert (=> d!104649 (= (validMask!0 mask!1312) (and (or (= mask!1312 #b00000000000000000000000000000111) (= mask!1312 #b00000000000000000000000000001111) (= mask!1312 #b00000000000000000000000000011111) (= mask!1312 #b00000000000000000000000000111111) (= mask!1312 #b00000000000000000000000001111111) (= mask!1312 #b00000000000000000000000011111111) (= mask!1312 #b00000000000000000000000111111111) (= mask!1312 #b00000000000000000000001111111111) (= mask!1312 #b00000000000000000000011111111111) (= mask!1312 #b00000000000000000000111111111111) (= mask!1312 #b00000000000000000001111111111111) (= mask!1312 #b00000000000000000011111111111111) (= mask!1312 #b00000000000000000111111111111111) (= mask!1312 #b00000000000000001111111111111111) (= mask!1312 #b00000000000000011111111111111111) (= mask!1312 #b00000000000000111111111111111111) (= mask!1312 #b00000000000001111111111111111111) (= mask!1312 #b00000000000011111111111111111111) (= mask!1312 #b00000000000111111111111111111111) (= mask!1312 #b00000000001111111111111111111111) (= mask!1312 #b00000000011111111111111111111111) (= mask!1312 #b00000000111111111111111111111111) (= mask!1312 #b00000001111111111111111111111111) (= mask!1312 #b00000011111111111111111111111111) (= mask!1312 #b00000111111111111111111111111111) (= mask!1312 #b00001111111111111111111111111111) (= mask!1312 #b00011111111111111111111111111111) (= mask!1312 #b00111111111111111111111111111111)) (bvsle mask!1312 #b00111111111111111111111111111111)))))

(assert (=> start!70626 d!104649))

(declare-fun d!104651 () Bool)

(assert (=> d!104651 (= (array_inv!17351 _keys!976) (bvsge (size!22169 _keys!976) #b00000000000000000000000000000000))))

(assert (=> start!70626 d!104651))

(declare-fun d!104653 () Bool)

(assert (=> d!104653 (= (array_inv!17352 _values!788) (bvsge (size!22170 _values!788) #b00000000000000000000000000000000))))

(assert (=> start!70626 d!104653))

(declare-fun b!820267 () Bool)

(declare-fun e!455735 () Bool)

(declare-fun call!35709 () Bool)

(assert (=> b!820267 (= e!455735 call!35709)))

(declare-fun b!820268 () Bool)

(declare-fun e!455736 () Bool)

(declare-fun contains!4164 (List!15557 (_ BitVec 64)) Bool)

(assert (=> b!820268 (= e!455736 (contains!4164 Nil!15554 (select (arr!21748 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun bm!35706 () Bool)

(declare-fun c!89126 () Bool)

(assert (=> bm!35706 (= call!35709 (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!89126 (Cons!15553 (select (arr!21748 _keys!976) #b00000000000000000000000000000000) Nil!15554) Nil!15554)))))

(declare-fun b!820269 () Bool)

(assert (=> b!820269 (= e!455735 call!35709)))

(declare-fun d!104655 () Bool)

(declare-fun res!559793 () Bool)

(declare-fun e!455737 () Bool)

(assert (=> d!104655 (=> res!559793 e!455737)))

(assert (=> d!104655 (= res!559793 (bvsge #b00000000000000000000000000000000 (size!22169 _keys!976)))))

(assert (=> d!104655 (= (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15554) e!455737)))

(declare-fun b!820270 () Bool)

(declare-fun e!455738 () Bool)

(assert (=> b!820270 (= e!455737 e!455738)))

(declare-fun res!559794 () Bool)

(assert (=> b!820270 (=> (not res!559794) (not e!455738))))

(assert (=> b!820270 (= res!559794 (not e!455736))))

(declare-fun res!559795 () Bool)

(assert (=> b!820270 (=> (not res!559795) (not e!455736))))

(assert (=> b!820270 (= res!559795 (validKeyInArray!0 (select (arr!21748 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!820271 () Bool)

(assert (=> b!820271 (= e!455738 e!455735)))

(assert (=> b!820271 (= c!89126 (validKeyInArray!0 (select (arr!21748 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!104655 (not res!559793)) b!820270))

(assert (= (and b!820270 res!559795) b!820268))

(assert (= (and b!820270 res!559794) b!820271))

(assert (= (and b!820271 c!89126) b!820267))

(assert (= (and b!820271 (not c!89126)) b!820269))

(assert (= (or b!820267 b!820269) bm!35706))

(assert (=> b!820268 m!762161))

(assert (=> b!820268 m!762161))

(declare-fun m!762325 () Bool)

(assert (=> b!820268 m!762325))

(assert (=> bm!35706 m!762161))

(declare-fun m!762327 () Bool)

(assert (=> bm!35706 m!762327))

(assert (=> b!820270 m!762161))

(assert (=> b!820270 m!762161))

(assert (=> b!820270 m!762163))

(assert (=> b!820271 m!762161))

(assert (=> b!820271 m!762161))

(assert (=> b!820271 m!762163))

(assert (=> b!820077 d!104655))

(declare-fun d!104657 () Bool)

(declare-fun e!455739 () Bool)

(assert (=> d!104657 e!455739))

(declare-fun res!559796 () Bool)

(assert (=> d!104657 (=> (not res!559796) (not e!455739))))

(declare-fun lt!368703 () ListLongMap!8535)

(assert (=> d!104657 (= res!559796 (contains!4162 lt!368703 (_1!4859 (tuple2!9699 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun lt!368704 () List!15556)

(assert (=> d!104657 (= lt!368703 (ListLongMap!8536 lt!368704))))

(declare-fun lt!368706 () Unit!28017)

(declare-fun lt!368705 () Unit!28017)

(assert (=> d!104657 (= lt!368706 lt!368705)))

(assert (=> d!104657 (= (getValueByKey!402 lt!368704 (_1!4859 (tuple2!9699 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (Some!407 (_2!4859 (tuple2!9699 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!104657 (= lt!368705 (lemmaContainsTupThenGetReturnValue!218 lt!368704 (_1!4859 (tuple2!9699 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!4859 (tuple2!9699 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!104657 (= lt!368704 (insertStrictlySorted!256 (toList!4283 lt!368522) (_1!4859 (tuple2!9699 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!4859 (tuple2!9699 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!104657 (= (+!1824 lt!368522 (tuple2!9699 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!368703)))

(declare-fun b!820272 () Bool)

(declare-fun res!559797 () Bool)

(assert (=> b!820272 (=> (not res!559797) (not e!455739))))

(assert (=> b!820272 (= res!559797 (= (getValueByKey!402 (toList!4283 lt!368703) (_1!4859 (tuple2!9699 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (Some!407 (_2!4859 (tuple2!9699 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!820273 () Bool)

(assert (=> b!820273 (= e!455739 (contains!4163 (toList!4283 lt!368703) (tuple2!9699 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(assert (= (and d!104657 res!559796) b!820272))

(assert (= (and b!820272 res!559797) b!820273))

(declare-fun m!762329 () Bool)

(assert (=> d!104657 m!762329))

(declare-fun m!762331 () Bool)

(assert (=> d!104657 m!762331))

(declare-fun m!762333 () Bool)

(assert (=> d!104657 m!762333))

(declare-fun m!762335 () Bool)

(assert (=> d!104657 m!762335))

(declare-fun m!762337 () Bool)

(assert (=> b!820272 m!762337))

(declare-fun m!762339 () Bool)

(assert (=> b!820273 m!762339))

(assert (=> b!820072 d!104657))

(declare-fun bm!35709 () Bool)

(declare-fun call!35712 () Bool)

(assert (=> bm!35709 (= call!35712 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(declare-fun b!820282 () Bool)

(declare-fun e!455747 () Bool)

(assert (=> b!820282 (= e!455747 call!35712)))

(declare-fun b!820283 () Bool)

(declare-fun e!455746 () Bool)

(declare-fun e!455748 () Bool)

(assert (=> b!820283 (= e!455746 e!455748)))

(declare-fun c!89129 () Bool)

(assert (=> b!820283 (= c!89129 (validKeyInArray!0 (select (arr!21748 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun d!104659 () Bool)

(declare-fun res!559802 () Bool)

(assert (=> d!104659 (=> res!559802 e!455746)))

(assert (=> d!104659 (= res!559802 (bvsge #b00000000000000000000000000000000 (size!22169 _keys!976)))))

(assert (=> d!104659 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312) e!455746)))

(declare-fun b!820284 () Bool)

(assert (=> b!820284 (= e!455748 call!35712)))

(declare-fun b!820285 () Bool)

(assert (=> b!820285 (= e!455748 e!455747)))

(declare-fun lt!368715 () (_ BitVec 64))

(assert (=> b!820285 (= lt!368715 (select (arr!21748 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!368713 () Unit!28017)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!45398 (_ BitVec 64) (_ BitVec 32)) Unit!28017)

(assert (=> b!820285 (= lt!368713 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!368715 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!45398 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!820285 (arrayContainsKey!0 _keys!976 lt!368715 #b00000000000000000000000000000000)))

(declare-fun lt!368714 () Unit!28017)

(assert (=> b!820285 (= lt!368714 lt!368713)))

(declare-fun res!559803 () Bool)

(declare-datatypes ((SeekEntryResult!8716 0))(
  ( (MissingZero!8716 (index!37234 (_ BitVec 32))) (Found!8716 (index!37235 (_ BitVec 32))) (Intermediate!8716 (undefined!9528 Bool) (index!37236 (_ BitVec 32)) (x!69103 (_ BitVec 32))) (Undefined!8716) (MissingVacant!8716 (index!37237 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!45398 (_ BitVec 32)) SeekEntryResult!8716)

(assert (=> b!820285 (= res!559803 (= (seekEntryOrOpen!0 (select (arr!21748 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) (Found!8716 #b00000000000000000000000000000000)))))

(assert (=> b!820285 (=> (not res!559803) (not e!455747))))

(assert (= (and d!104659 (not res!559802)) b!820283))

(assert (= (and b!820283 c!89129) b!820285))

(assert (= (and b!820283 (not c!89129)) b!820284))

(assert (= (and b!820285 res!559803) b!820282))

(assert (= (or b!820282 b!820284) bm!35709))

(declare-fun m!762341 () Bool)

(assert (=> bm!35709 m!762341))

(assert (=> b!820283 m!762161))

(assert (=> b!820283 m!762161))

(assert (=> b!820283 m!762163))

(assert (=> b!820285 m!762161))

(declare-fun m!762343 () Bool)

(assert (=> b!820285 m!762343))

(declare-fun m!762345 () Bool)

(assert (=> b!820285 m!762345))

(assert (=> b!820285 m!762161))

(declare-fun m!762347 () Bool)

(assert (=> b!820285 m!762347))

(assert (=> b!820073 d!104659))

(declare-fun mapNonEmpty!23536 () Bool)

(declare-fun mapRes!23536 () Bool)

(declare-fun tp!45472 () Bool)

(declare-fun e!455754 () Bool)

(assert (=> mapNonEmpty!23536 (= mapRes!23536 (and tp!45472 e!455754))))

(declare-fun mapRest!23536 () (Array (_ BitVec 32) ValueCell!6894))

(declare-fun mapKey!23536 () (_ BitVec 32))

(declare-fun mapValue!23536 () ValueCell!6894)

(assert (=> mapNonEmpty!23536 (= mapRest!23530 (store mapRest!23536 mapKey!23536 mapValue!23536))))

(declare-fun mapIsEmpty!23536 () Bool)

(assert (=> mapIsEmpty!23536 mapRes!23536))

(declare-fun b!820293 () Bool)

(declare-fun e!455753 () Bool)

(assert (=> b!820293 (= e!455753 tp_is_empty!14619)))

(declare-fun condMapEmpty!23536 () Bool)

(declare-fun mapDefault!23536 () ValueCell!6894)

(assert (=> mapNonEmpty!23530 (= condMapEmpty!23536 (= mapRest!23530 ((as const (Array (_ BitVec 32) ValueCell!6894)) mapDefault!23536)))))

(assert (=> mapNonEmpty!23530 (= tp!45462 (and e!455753 mapRes!23536))))

(declare-fun b!820292 () Bool)

(assert (=> b!820292 (= e!455754 tp_is_empty!14619)))

(assert (= (and mapNonEmpty!23530 condMapEmpty!23536) mapIsEmpty!23536))

(assert (= (and mapNonEmpty!23530 (not condMapEmpty!23536)) mapNonEmpty!23536))

(assert (= (and mapNonEmpty!23536 ((_ is ValueCellFull!6894) mapValue!23536)) b!820292))

(assert (= (and mapNonEmpty!23530 ((_ is ValueCellFull!6894) mapDefault!23536)) b!820293))

(declare-fun m!762349 () Bool)

(assert (=> mapNonEmpty!23536 m!762349))

(declare-fun b_lambda!11013 () Bool)

(assert (= b_lambda!11003 (or (and start!70626 b_free!12909) b_lambda!11013)))

(declare-fun b_lambda!11015 () Bool)

(assert (= b_lambda!11005 (or (and start!70626 b_free!12909) b_lambda!11015)))

(declare-fun b_lambda!11017 () Bool)

(assert (= b_lambda!11007 (or (and start!70626 b_free!12909) b_lambda!11017)))

(declare-fun b_lambda!11019 () Bool)

(assert (= b_lambda!11001 (or (and start!70626 b_free!12909) b_lambda!11019)))

(declare-fun b_lambda!11021 () Bool)

(assert (= b_lambda!11009 (or (and start!70626 b_free!12909) b_lambda!11021)))

(declare-fun b_lambda!11023 () Bool)

(assert (= b_lambda!11011 (or (and start!70626 b_free!12909) b_lambda!11023)))

(check-sat (not b!820250) (not b!820120) (not b!820171) (not b!820268) (not bm!35698) (not b!820189) (not b!820194) (not bm!35706) (not b!820186) (not b!820244) (not b!820243) (not b!820196) tp_is_empty!14619 (not b_lambda!11021) (not b!820273) (not b_lambda!11015) (not b!820117) (not b!820256) (not d!104641) (not mapNonEmpty!23536) (not bm!35690) (not b!820119) (not d!104635) (not b!820191) (not b!820193) (not b!820283) (not b!820206) (not b!820118) (not d!104637) (not bm!35692) b_and!21783 (not b!820285) (not b!820246) (not b!820114) (not b!820237) (not bm!35709) (not b!820234) (not b_lambda!11023) (not b_lambda!11019) (not b!820205) (not b!820168) (not b!820166) (not b!820235) (not d!104631) (not bm!35703) (not b!820247) (not b!820249) (not d!104657) (not b!820183) (not b_lambda!11017) (not b!820207) (not b!820238) (not d!104645) (not b!820173) (not bm!35689) (not d!104629) (not b_next!12909) (not d!104627) (not b!820163) (not b!820115) (not b!820239) (not b!820248) (not b!820236) (not b!820270) (not bm!35699) (not b!820251) (not d!104643) (not b!820116) (not d!104647) (not b!820182) (not d!104633) (not bm!35697) (not bm!35696) (not b!820272) (not bm!35702) (not b_lambda!11013) (not b!820271) (not bm!35691) (not b!820113) (not b!820208) (not b!820255) (not b!820170) (not d!104639))
(check-sat b_and!21783 (not b_next!12909))
