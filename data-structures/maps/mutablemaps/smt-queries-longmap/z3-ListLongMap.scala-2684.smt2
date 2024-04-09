; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39932 () Bool)

(assert start!39932)

(declare-fun b_free!10191 () Bool)

(declare-fun b_next!10191 () Bool)

(assert (=> start!39932 (= b_free!10191 (not b_next!10191))))

(declare-fun tp!36101 () Bool)

(declare-fun b_and!18059 () Bool)

(assert (=> start!39932 (= tp!36101 b_and!18059)))

(declare-fun mapNonEmpty!18636 () Bool)

(declare-fun mapRes!18636 () Bool)

(declare-fun tp!36102 () Bool)

(declare-fun e!256021 () Bool)

(assert (=> mapNonEmpty!18636 (= mapRes!18636 (and tp!36102 e!256021))))

(declare-fun mapKey!18636 () (_ BitVec 32))

(declare-datatypes ((V!16229 0))(
  ( (V!16230 (val!5716 Int)) )
))
(declare-datatypes ((ValueCell!5328 0))(
  ( (ValueCellFull!5328 (v!7959 V!16229)) (EmptyCell!5328) )
))
(declare-fun mapRest!18636 () (Array (_ BitVec 32) ValueCell!5328))

(declare-fun mapValue!18636 () ValueCell!5328)

(declare-datatypes ((array!26495 0))(
  ( (array!26496 (arr!12694 (Array (_ BitVec 32) ValueCell!5328)) (size!13046 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26495)

(assert (=> mapNonEmpty!18636 (= (arr!12694 _values!549) (store mapRest!18636 mapKey!18636 mapValue!18636))))

(declare-fun b!432927 () Bool)

(declare-fun res!254830 () Bool)

(declare-fun e!256016 () Bool)

(assert (=> b!432927 (=> (not res!254830) (not e!256016))))

(declare-datatypes ((array!26497 0))(
  ( (array!26498 (arr!12695 (Array (_ BitVec 32) (_ BitVec 64))) (size!13047 (_ BitVec 32))) )
))
(declare-fun lt!198770 () array!26497)

(declare-datatypes ((List!7534 0))(
  ( (Nil!7531) (Cons!7530 (h!8386 (_ BitVec 64)) (t!13182 List!7534)) )
))
(declare-fun arrayNoDuplicates!0 (array!26497 (_ BitVec 32) List!7534) Bool)

(assert (=> b!432927 (= res!254830 (arrayNoDuplicates!0 lt!198770 #b00000000000000000000000000000000 Nil!7531))))

(declare-fun b!432928 () Bool)

(declare-fun res!254831 () Bool)

(declare-fun e!256017 () Bool)

(assert (=> b!432928 (=> (not res!254831) (not e!256017))))

(declare-fun _keys!709 () array!26497)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!432928 (= res!254831 (and (= (size!13046 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13047 _keys!709) (size!13046 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!432929 () Bool)

(declare-fun e!256020 () Bool)

(declare-fun e!256019 () Bool)

(assert (=> b!432929 (= e!256020 e!256019)))

(declare-fun res!254832 () Bool)

(assert (=> b!432929 (=> res!254832 e!256019)))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!432929 (= res!254832 (= k0!794 (select (arr!12695 _keys!709) from!863)))))

(assert (=> b!432929 (not (= (select (arr!12695 _keys!709) from!863) k0!794))))

(declare-datatypes ((Unit!12765 0))(
  ( (Unit!12766) )
))
(declare-fun lt!198771 () Unit!12765)

(declare-fun e!256024 () Unit!12765)

(assert (=> b!432929 (= lt!198771 e!256024)))

(declare-fun c!55547 () Bool)

(assert (=> b!432929 (= c!55547 (= (select (arr!12695 _keys!709) from!863) k0!794))))

(declare-datatypes ((tuple2!7484 0))(
  ( (tuple2!7485 (_1!3752 (_ BitVec 64)) (_2!3752 V!16229)) )
))
(declare-datatypes ((List!7535 0))(
  ( (Nil!7532) (Cons!7531 (h!8387 tuple2!7484) (t!13183 List!7535)) )
))
(declare-datatypes ((ListLongMap!6411 0))(
  ( (ListLongMap!6412 (toList!3221 List!7535)) )
))
(declare-fun lt!198768 () ListLongMap!6411)

(declare-fun lt!198766 () ListLongMap!6411)

(assert (=> b!432929 (= lt!198768 lt!198766)))

(declare-fun lt!198765 () ListLongMap!6411)

(declare-fun lt!198776 () tuple2!7484)

(declare-fun +!1367 (ListLongMap!6411 tuple2!7484) ListLongMap!6411)

(assert (=> b!432929 (= lt!198766 (+!1367 lt!198765 lt!198776))))

(declare-fun lt!198775 () V!16229)

(assert (=> b!432929 (= lt!198776 (tuple2!7485 (select (arr!12695 _keys!709) from!863) lt!198775))))

(declare-fun defaultEntry!557 () Int)

(declare-fun get!6319 (ValueCell!5328 V!16229) V!16229)

(declare-fun dynLambda!802 (Int (_ BitVec 64)) V!16229)

(assert (=> b!432929 (= lt!198775 (get!6319 (select (arr!12694 _values!549) from!863) (dynLambda!802 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!432930 () Bool)

(declare-fun res!254825 () Bool)

(assert (=> b!432930 (=> (not res!254825) (not e!256017))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!432930 (= res!254825 (validMask!0 mask!1025))))

(declare-fun b!432931 () Bool)

(declare-fun res!254828 () Bool)

(assert (=> b!432931 (=> (not res!254828) (not e!256017))))

(assert (=> b!432931 (= res!254828 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7531))))

(declare-fun b!432932 () Bool)

(declare-fun e!256015 () Bool)

(assert (=> b!432932 (= e!256015 (not e!256020))))

(declare-fun res!254835 () Bool)

(assert (=> b!432932 (=> res!254835 e!256020)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!432932 (= res!254835 (not (validKeyInArray!0 (select (arr!12695 _keys!709) from!863))))))

(declare-fun lt!198777 () ListLongMap!6411)

(assert (=> b!432932 (= lt!198777 lt!198765)))

(declare-fun lt!198764 () ListLongMap!6411)

(declare-fun lt!198767 () tuple2!7484)

(assert (=> b!432932 (= lt!198765 (+!1367 lt!198764 lt!198767))))

(declare-fun minValue!515 () V!16229)

(declare-fun zeroValue!515 () V!16229)

(declare-fun lt!198774 () array!26495)

(declare-fun getCurrentListMapNoExtraKeys!1411 (array!26497 array!26495 (_ BitVec 32) (_ BitVec 32) V!16229 V!16229 (_ BitVec 32) Int) ListLongMap!6411)

(assert (=> b!432932 (= lt!198777 (getCurrentListMapNoExtraKeys!1411 lt!198770 lt!198774 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun v!412 () V!16229)

(assert (=> b!432932 (= lt!198767 (tuple2!7485 k0!794 v!412))))

(assert (=> b!432932 (= lt!198764 (getCurrentListMapNoExtraKeys!1411 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lt!198763 () Unit!12765)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!555 (array!26497 array!26495 (_ BitVec 32) (_ BitVec 32) V!16229 V!16229 (_ BitVec 32) (_ BitVec 64) V!16229 (_ BitVec 32) Int) Unit!12765)

(assert (=> b!432932 (= lt!198763 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!555 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!432933 () Bool)

(declare-fun res!254827 () Bool)

(assert (=> b!432933 (=> (not res!254827) (not e!256017))))

(declare-fun arrayContainsKey!0 (array!26497 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!432933 (= res!254827 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!432934 () Bool)

(declare-fun Unit!12767 () Unit!12765)

(assert (=> b!432934 (= e!256024 Unit!12767)))

(declare-fun res!254823 () Bool)

(assert (=> start!39932 (=> (not res!254823) (not e!256017))))

(assert (=> start!39932 (= res!254823 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13047 _keys!709))))))

(assert (=> start!39932 e!256017))

(declare-fun tp_is_empty!11343 () Bool)

(assert (=> start!39932 tp_is_empty!11343))

(assert (=> start!39932 tp!36101))

(assert (=> start!39932 true))

(declare-fun e!256018 () Bool)

(declare-fun array_inv!9230 (array!26495) Bool)

(assert (=> start!39932 (and (array_inv!9230 _values!549) e!256018)))

(declare-fun array_inv!9231 (array!26497) Bool)

(assert (=> start!39932 (array_inv!9231 _keys!709)))

(declare-fun b!432935 () Bool)

(assert (=> b!432935 (= e!256016 e!256015)))

(declare-fun res!254834 () Bool)

(assert (=> b!432935 (=> (not res!254834) (not e!256015))))

(assert (=> b!432935 (= res!254834 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!432935 (= lt!198768 (getCurrentListMapNoExtraKeys!1411 lt!198770 lt!198774 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!432935 (= lt!198774 (array!26496 (store (arr!12694 _values!549) i!563 (ValueCellFull!5328 v!412)) (size!13046 _values!549)))))

(declare-fun lt!198772 () ListLongMap!6411)

(assert (=> b!432935 (= lt!198772 (getCurrentListMapNoExtraKeys!1411 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!432936 () Bool)

(assert (=> b!432936 (= e!256017 e!256016)))

(declare-fun res!254821 () Bool)

(assert (=> b!432936 (=> (not res!254821) (not e!256016))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26497 (_ BitVec 32)) Bool)

(assert (=> b!432936 (= res!254821 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!198770 mask!1025))))

(assert (=> b!432936 (= lt!198770 (array!26498 (store (arr!12695 _keys!709) i!563 k0!794) (size!13047 _keys!709)))))

(declare-fun b!432937 () Bool)

(declare-fun res!254829 () Bool)

(assert (=> b!432937 (=> (not res!254829) (not e!256017))))

(assert (=> b!432937 (= res!254829 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!432938 () Bool)

(declare-fun res!254822 () Bool)

(assert (=> b!432938 (=> (not res!254822) (not e!256017))))

(assert (=> b!432938 (= res!254822 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13047 _keys!709))))))

(declare-fun b!432939 () Bool)

(assert (=> b!432939 (= e!256021 tp_is_empty!11343)))

(declare-fun b!432940 () Bool)

(declare-fun e!256023 () Bool)

(assert (=> b!432940 (= e!256018 (and e!256023 mapRes!18636))))

(declare-fun condMapEmpty!18636 () Bool)

(declare-fun mapDefault!18636 () ValueCell!5328)

(assert (=> b!432940 (= condMapEmpty!18636 (= (arr!12694 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5328)) mapDefault!18636)))))

(declare-fun b!432941 () Bool)

(declare-fun res!254824 () Bool)

(assert (=> b!432941 (=> (not res!254824) (not e!256017))))

(assert (=> b!432941 (= res!254824 (validKeyInArray!0 k0!794))))

(declare-fun b!432942 () Bool)

(declare-fun res!254826 () Bool)

(assert (=> b!432942 (=> (not res!254826) (not e!256016))))

(assert (=> b!432942 (= res!254826 (bvsle from!863 i!563))))

(declare-fun b!432943 () Bool)

(declare-fun res!254833 () Bool)

(assert (=> b!432943 (=> (not res!254833) (not e!256017))))

(assert (=> b!432943 (= res!254833 (or (= (select (arr!12695 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12695 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!432944 () Bool)

(assert (=> b!432944 (= e!256019 true)))

(assert (=> b!432944 (= lt!198766 (+!1367 (+!1367 lt!198764 lt!198776) lt!198767))))

(declare-fun lt!198769 () Unit!12765)

(declare-fun addCommutativeForDiffKeys!377 (ListLongMap!6411 (_ BitVec 64) V!16229 (_ BitVec 64) V!16229) Unit!12765)

(assert (=> b!432944 (= lt!198769 (addCommutativeForDiffKeys!377 lt!198764 k0!794 v!412 (select (arr!12695 _keys!709) from!863) lt!198775))))

(declare-fun b!432945 () Bool)

(assert (=> b!432945 (= e!256023 tp_is_empty!11343)))

(declare-fun mapIsEmpty!18636 () Bool)

(assert (=> mapIsEmpty!18636 mapRes!18636))

(declare-fun b!432946 () Bool)

(declare-fun Unit!12768 () Unit!12765)

(assert (=> b!432946 (= e!256024 Unit!12768)))

(declare-fun lt!198773 () Unit!12765)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26497 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12765)

(assert (=> b!432946 (= lt!198773 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!432946 false))

(assert (= (and start!39932 res!254823) b!432930))

(assert (= (and b!432930 res!254825) b!432928))

(assert (= (and b!432928 res!254831) b!432937))

(assert (= (and b!432937 res!254829) b!432931))

(assert (= (and b!432931 res!254828) b!432938))

(assert (= (and b!432938 res!254822) b!432941))

(assert (= (and b!432941 res!254824) b!432943))

(assert (= (and b!432943 res!254833) b!432933))

(assert (= (and b!432933 res!254827) b!432936))

(assert (= (and b!432936 res!254821) b!432927))

(assert (= (and b!432927 res!254830) b!432942))

(assert (= (and b!432942 res!254826) b!432935))

(assert (= (and b!432935 res!254834) b!432932))

(assert (= (and b!432932 (not res!254835)) b!432929))

(assert (= (and b!432929 c!55547) b!432946))

(assert (= (and b!432929 (not c!55547)) b!432934))

(assert (= (and b!432929 (not res!254832)) b!432944))

(assert (= (and b!432940 condMapEmpty!18636) mapIsEmpty!18636))

(assert (= (and b!432940 (not condMapEmpty!18636)) mapNonEmpty!18636))

(get-info :version)

(assert (= (and mapNonEmpty!18636 ((_ is ValueCellFull!5328) mapValue!18636)) b!432939))

(assert (= (and b!432940 ((_ is ValueCellFull!5328) mapDefault!18636)) b!432945))

(assert (= start!39932 b!432940))

(declare-fun b_lambda!9309 () Bool)

(assert (=> (not b_lambda!9309) (not b!432929)))

(declare-fun t!13181 () Bool)

(declare-fun tb!3605 () Bool)

(assert (=> (and start!39932 (= defaultEntry!557 defaultEntry!557) t!13181) tb!3605))

(declare-fun result!6729 () Bool)

(assert (=> tb!3605 (= result!6729 tp_is_empty!11343)))

(assert (=> b!432929 t!13181))

(declare-fun b_and!18061 () Bool)

(assert (= b_and!18059 (and (=> t!13181 result!6729) b_and!18061)))

(declare-fun m!421001 () Bool)

(assert (=> start!39932 m!421001))

(declare-fun m!421003 () Bool)

(assert (=> start!39932 m!421003))

(declare-fun m!421005 () Bool)

(assert (=> b!432933 m!421005))

(declare-fun m!421007 () Bool)

(assert (=> b!432929 m!421007))

(declare-fun m!421009 () Bool)

(assert (=> b!432929 m!421009))

(declare-fun m!421011 () Bool)

(assert (=> b!432929 m!421011))

(assert (=> b!432929 m!421009))

(declare-fun m!421013 () Bool)

(assert (=> b!432929 m!421013))

(declare-fun m!421015 () Bool)

(assert (=> b!432929 m!421015))

(assert (=> b!432929 m!421011))

(declare-fun m!421017 () Bool)

(assert (=> b!432936 m!421017))

(declare-fun m!421019 () Bool)

(assert (=> b!432936 m!421019))

(declare-fun m!421021 () Bool)

(assert (=> b!432941 m!421021))

(declare-fun m!421023 () Bool)

(assert (=> mapNonEmpty!18636 m!421023))

(declare-fun m!421025 () Bool)

(assert (=> b!432931 m!421025))

(declare-fun m!421027 () Bool)

(assert (=> b!432935 m!421027))

(declare-fun m!421029 () Bool)

(assert (=> b!432935 m!421029))

(declare-fun m!421031 () Bool)

(assert (=> b!432935 m!421031))

(declare-fun m!421033 () Bool)

(assert (=> b!432930 m!421033))

(declare-fun m!421035 () Bool)

(assert (=> b!432927 m!421035))

(declare-fun m!421037 () Bool)

(assert (=> b!432943 m!421037))

(assert (=> b!432932 m!421007))

(declare-fun m!421039 () Bool)

(assert (=> b!432932 m!421039))

(declare-fun m!421041 () Bool)

(assert (=> b!432932 m!421041))

(declare-fun m!421043 () Bool)

(assert (=> b!432932 m!421043))

(assert (=> b!432932 m!421007))

(declare-fun m!421045 () Bool)

(assert (=> b!432932 m!421045))

(declare-fun m!421047 () Bool)

(assert (=> b!432932 m!421047))

(declare-fun m!421049 () Bool)

(assert (=> b!432946 m!421049))

(declare-fun m!421051 () Bool)

(assert (=> b!432937 m!421051))

(declare-fun m!421053 () Bool)

(assert (=> b!432944 m!421053))

(assert (=> b!432944 m!421053))

(declare-fun m!421055 () Bool)

(assert (=> b!432944 m!421055))

(assert (=> b!432944 m!421007))

(assert (=> b!432944 m!421007))

(declare-fun m!421057 () Bool)

(assert (=> b!432944 m!421057))

(check-sat (not b!432936) b_and!18061 (not b!432927) (not b!432946) (not mapNonEmpty!18636) (not b!432935) (not b!432933) (not b!432930) (not b!432937) tp_is_empty!11343 (not b!432931) (not b!432941) (not b!432929) (not start!39932) (not b!432932) (not b_lambda!9309) (not b!432944) (not b_next!10191))
(check-sat b_and!18061 (not b_next!10191))
