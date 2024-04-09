; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41176 () Bool)

(assert start!41176)

(declare-fun b_free!11037 () Bool)

(declare-fun b_next!11037 () Bool)

(assert (=> start!41176 (= b_free!11037 (not b_next!11037))))

(declare-fun tp!38946 () Bool)

(declare-fun b_and!19331 () Bool)

(assert (=> start!41176 (= tp!38946 b_and!19331)))

(declare-fun mapIsEmpty!20212 () Bool)

(declare-fun mapRes!20212 () Bool)

(assert (=> mapIsEmpty!20212 mapRes!20212))

(declare-fun b!459742 () Bool)

(declare-fun e!268282 () Bool)

(declare-fun e!268276 () Bool)

(assert (=> b!459742 (= e!268282 e!268276)))

(declare-fun res!274890 () Bool)

(assert (=> b!459742 (=> res!274890 e!268276)))

(declare-fun k0!794 () (_ BitVec 64))

(declare-datatypes ((array!28515 0))(
  ( (array!28516 (arr!13695 (Array (_ BitVec 32) (_ BitVec 64))) (size!14047 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28515)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!459742 (= res!274890 (= k0!794 (select (arr!13695 _keys!709) from!863)))))

(assert (=> b!459742 (not (= (select (arr!13695 _keys!709) from!863) k0!794))))

(declare-datatypes ((Unit!13322 0))(
  ( (Unit!13323) )
))
(declare-fun lt!208103 () Unit!13322)

(declare-fun e!268279 () Unit!13322)

(assert (=> b!459742 (= lt!208103 e!268279)))

(declare-fun c!56429 () Bool)

(assert (=> b!459742 (= c!56429 (= (select (arr!13695 _keys!709) from!863) k0!794))))

(declare-datatypes ((V!17605 0))(
  ( (V!17606 (val!6232 Int)) )
))
(declare-datatypes ((tuple2!8184 0))(
  ( (tuple2!8185 (_1!4102 (_ BitVec 64)) (_2!4102 V!17605)) )
))
(declare-datatypes ((List!8287 0))(
  ( (Nil!8284) (Cons!8283 (h!9139 tuple2!8184) (t!14211 List!8287)) )
))
(declare-datatypes ((ListLongMap!7111 0))(
  ( (ListLongMap!7112 (toList!3571 List!8287)) )
))
(declare-fun lt!208099 () ListLongMap!7111)

(declare-fun lt!208106 () ListLongMap!7111)

(assert (=> b!459742 (= lt!208099 lt!208106)))

(declare-fun lt!208108 () ListLongMap!7111)

(declare-fun lt!208113 () tuple2!8184)

(declare-fun +!1590 (ListLongMap!7111 tuple2!8184) ListLongMap!7111)

(assert (=> b!459742 (= lt!208106 (+!1590 lt!208108 lt!208113))))

(declare-fun lt!208104 () V!17605)

(assert (=> b!459742 (= lt!208113 (tuple2!8185 (select (arr!13695 _keys!709) from!863) lt!208104))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5844 0))(
  ( (ValueCellFull!5844 (v!8506 V!17605)) (EmptyCell!5844) )
))
(declare-datatypes ((array!28517 0))(
  ( (array!28518 (arr!13696 (Array (_ BitVec 32) ValueCell!5844)) (size!14048 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28517)

(declare-fun get!6771 (ValueCell!5844 V!17605) V!17605)

(declare-fun dynLambda!899 (Int (_ BitVec 64)) V!17605)

(assert (=> b!459742 (= lt!208104 (get!6771 (select (arr!13696 _values!549) from!863) (dynLambda!899 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!459743 () Bool)

(declare-fun res!274887 () Bool)

(declare-fun e!268274 () Bool)

(assert (=> b!459743 (=> (not res!274887) (not e!268274))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28515 (_ BitVec 32)) Bool)

(assert (=> b!459743 (= res!274887 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!459744 () Bool)

(declare-fun e!268275 () Bool)

(declare-fun tp_is_empty!12375 () Bool)

(assert (=> b!459744 (= e!268275 tp_is_empty!12375)))

(declare-fun b!459745 () Bool)

(assert (=> b!459745 (= e!268276 true)))

(declare-fun lt!208101 () ListLongMap!7111)

(declare-fun lt!208110 () tuple2!8184)

(assert (=> b!459745 (= lt!208106 (+!1590 (+!1590 lt!208101 lt!208113) lt!208110))))

(declare-fun lt!208109 () Unit!13322)

(declare-fun v!412 () V!17605)

(declare-fun addCommutativeForDiffKeys!417 (ListLongMap!7111 (_ BitVec 64) V!17605 (_ BitVec 64) V!17605) Unit!13322)

(assert (=> b!459745 (= lt!208109 (addCommutativeForDiffKeys!417 lt!208101 k0!794 v!412 (select (arr!13695 _keys!709) from!863) lt!208104))))

(declare-fun res!274888 () Bool)

(assert (=> start!41176 (=> (not res!274888) (not e!268274))))

(assert (=> start!41176 (= res!274888 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!14047 _keys!709))))))

(assert (=> start!41176 e!268274))

(assert (=> start!41176 tp_is_empty!12375))

(assert (=> start!41176 tp!38946))

(assert (=> start!41176 true))

(declare-fun e!268280 () Bool)

(declare-fun array_inv!9902 (array!28517) Bool)

(assert (=> start!41176 (and (array_inv!9902 _values!549) e!268280)))

(declare-fun array_inv!9903 (array!28515) Bool)

(assert (=> start!41176 (array_inv!9903 _keys!709)))

(declare-fun b!459746 () Bool)

(declare-fun res!274879 () Bool)

(assert (=> b!459746 (=> (not res!274879) (not e!268274))))

(declare-datatypes ((List!8288 0))(
  ( (Nil!8285) (Cons!8284 (h!9140 (_ BitVec 64)) (t!14212 List!8288)) )
))
(declare-fun arrayNoDuplicates!0 (array!28515 (_ BitVec 32) List!8288) Bool)

(assert (=> b!459746 (= res!274879 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8285))))

(declare-fun b!459747 () Bool)

(declare-fun res!274883 () Bool)

(assert (=> b!459747 (=> (not res!274883) (not e!268274))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!459747 (= res!274883 (validMask!0 mask!1025))))

(declare-fun b!459748 () Bool)

(declare-fun res!274877 () Bool)

(declare-fun e!268281 () Bool)

(assert (=> b!459748 (=> (not res!274877) (not e!268281))))

(declare-fun lt!208100 () array!28515)

(assert (=> b!459748 (= res!274877 (arrayNoDuplicates!0 lt!208100 #b00000000000000000000000000000000 Nil!8285))))

(declare-fun b!459749 () Bool)

(declare-fun res!274885 () Bool)

(assert (=> b!459749 (=> (not res!274885) (not e!268274))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!459749 (= res!274885 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14047 _keys!709))))))

(declare-fun b!459750 () Bool)

(declare-fun e!268277 () Bool)

(assert (=> b!459750 (= e!268281 e!268277)))

(declare-fun res!274884 () Bool)

(assert (=> b!459750 (=> (not res!274884) (not e!268277))))

(assert (=> b!459750 (= res!274884 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!17605)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17605)

(declare-fun lt!208112 () array!28517)

(declare-fun getCurrentListMapNoExtraKeys!1741 (array!28515 array!28517 (_ BitVec 32) (_ BitVec 32) V!17605 V!17605 (_ BitVec 32) Int) ListLongMap!7111)

(assert (=> b!459750 (= lt!208099 (getCurrentListMapNoExtraKeys!1741 lt!208100 lt!208112 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!459750 (= lt!208112 (array!28518 (store (arr!13696 _values!549) i!563 (ValueCellFull!5844 v!412)) (size!14048 _values!549)))))

(declare-fun lt!208111 () ListLongMap!7111)

(assert (=> b!459750 (= lt!208111 (getCurrentListMapNoExtraKeys!1741 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapNonEmpty!20212 () Bool)

(declare-fun tp!38947 () Bool)

(assert (=> mapNonEmpty!20212 (= mapRes!20212 (and tp!38947 e!268275))))

(declare-fun mapKey!20212 () (_ BitVec 32))

(declare-fun mapRest!20212 () (Array (_ BitVec 32) ValueCell!5844))

(declare-fun mapValue!20212 () ValueCell!5844)

(assert (=> mapNonEmpty!20212 (= (arr!13696 _values!549) (store mapRest!20212 mapKey!20212 mapValue!20212))))

(declare-fun b!459751 () Bool)

(declare-fun res!274880 () Bool)

(assert (=> b!459751 (=> (not res!274880) (not e!268274))))

(assert (=> b!459751 (= res!274880 (and (= (size!14048 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14047 _keys!709) (size!14048 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!459752 () Bool)

(assert (=> b!459752 (= e!268274 e!268281)))

(declare-fun res!274891 () Bool)

(assert (=> b!459752 (=> (not res!274891) (not e!268281))))

(assert (=> b!459752 (= res!274891 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!208100 mask!1025))))

(assert (=> b!459752 (= lt!208100 (array!28516 (store (arr!13695 _keys!709) i!563 k0!794) (size!14047 _keys!709)))))

(declare-fun b!459753 () Bool)

(declare-fun res!274882 () Bool)

(assert (=> b!459753 (=> (not res!274882) (not e!268281))))

(assert (=> b!459753 (= res!274882 (bvsle from!863 i!563))))

(declare-fun b!459754 () Bool)

(declare-fun e!268273 () Bool)

(assert (=> b!459754 (= e!268273 tp_is_empty!12375)))

(declare-fun b!459755 () Bool)

(declare-fun res!274889 () Bool)

(assert (=> b!459755 (=> (not res!274889) (not e!268274))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!459755 (= res!274889 (validKeyInArray!0 k0!794))))

(declare-fun b!459756 () Bool)

(declare-fun res!274881 () Bool)

(assert (=> b!459756 (=> (not res!274881) (not e!268274))))

(declare-fun arrayContainsKey!0 (array!28515 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!459756 (= res!274881 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!459757 () Bool)

(declare-fun Unit!13324 () Unit!13322)

(assert (=> b!459757 (= e!268279 Unit!13324)))

(declare-fun b!459758 () Bool)

(assert (=> b!459758 (= e!268280 (and e!268273 mapRes!20212))))

(declare-fun condMapEmpty!20212 () Bool)

(declare-fun mapDefault!20212 () ValueCell!5844)

(assert (=> b!459758 (= condMapEmpty!20212 (= (arr!13696 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5844)) mapDefault!20212)))))

(declare-fun b!459759 () Bool)

(declare-fun res!274886 () Bool)

(assert (=> b!459759 (=> (not res!274886) (not e!268274))))

(assert (=> b!459759 (= res!274886 (or (= (select (arr!13695 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13695 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!459760 () Bool)

(assert (=> b!459760 (= e!268277 (not e!268282))))

(declare-fun res!274878 () Bool)

(assert (=> b!459760 (=> res!274878 e!268282)))

(assert (=> b!459760 (= res!274878 (not (validKeyInArray!0 (select (arr!13695 _keys!709) from!863))))))

(declare-fun lt!208105 () ListLongMap!7111)

(assert (=> b!459760 (= lt!208105 lt!208108)))

(assert (=> b!459760 (= lt!208108 (+!1590 lt!208101 lt!208110))))

(assert (=> b!459760 (= lt!208105 (getCurrentListMapNoExtraKeys!1741 lt!208100 lt!208112 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!459760 (= lt!208110 (tuple2!8185 k0!794 v!412))))

(assert (=> b!459760 (= lt!208101 (getCurrentListMapNoExtraKeys!1741 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!208102 () Unit!13322)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!744 (array!28515 array!28517 (_ BitVec 32) (_ BitVec 32) V!17605 V!17605 (_ BitVec 32) (_ BitVec 64) V!17605 (_ BitVec 32) Int) Unit!13322)

(assert (=> b!459760 (= lt!208102 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!744 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!459761 () Bool)

(declare-fun Unit!13325 () Unit!13322)

(assert (=> b!459761 (= e!268279 Unit!13325)))

(declare-fun lt!208107 () Unit!13322)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!28515 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!13322)

(assert (=> b!459761 (= lt!208107 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!459761 false))

(assert (= (and start!41176 res!274888) b!459747))

(assert (= (and b!459747 res!274883) b!459751))

(assert (= (and b!459751 res!274880) b!459743))

(assert (= (and b!459743 res!274887) b!459746))

(assert (= (and b!459746 res!274879) b!459749))

(assert (= (and b!459749 res!274885) b!459755))

(assert (= (and b!459755 res!274889) b!459759))

(assert (= (and b!459759 res!274886) b!459756))

(assert (= (and b!459756 res!274881) b!459752))

(assert (= (and b!459752 res!274891) b!459748))

(assert (= (and b!459748 res!274877) b!459753))

(assert (= (and b!459753 res!274882) b!459750))

(assert (= (and b!459750 res!274884) b!459760))

(assert (= (and b!459760 (not res!274878)) b!459742))

(assert (= (and b!459742 c!56429) b!459761))

(assert (= (and b!459742 (not c!56429)) b!459757))

(assert (= (and b!459742 (not res!274890)) b!459745))

(assert (= (and b!459758 condMapEmpty!20212) mapIsEmpty!20212))

(assert (= (and b!459758 (not condMapEmpty!20212)) mapNonEmpty!20212))

(get-info :version)

(assert (= (and mapNonEmpty!20212 ((_ is ValueCellFull!5844) mapValue!20212)) b!459744))

(assert (= (and b!459758 ((_ is ValueCellFull!5844) mapDefault!20212)) b!459754))

(assert (= start!41176 b!459758))

(declare-fun b_lambda!9901 () Bool)

(assert (=> (not b_lambda!9901) (not b!459742)))

(declare-fun t!14210 () Bool)

(declare-fun tb!3881 () Bool)

(assert (=> (and start!41176 (= defaultEntry!557 defaultEntry!557) t!14210) tb!3881))

(declare-fun result!7299 () Bool)

(assert (=> tb!3881 (= result!7299 tp_is_empty!12375)))

(assert (=> b!459742 t!14210))

(declare-fun b_and!19333 () Bool)

(assert (= b_and!19331 (and (=> t!14210 result!7299) b_and!19333)))

(declare-fun m!443001 () Bool)

(assert (=> b!459752 m!443001))

(declare-fun m!443003 () Bool)

(assert (=> b!459752 m!443003))

(declare-fun m!443005 () Bool)

(assert (=> b!459743 m!443005))

(declare-fun m!443007 () Bool)

(assert (=> b!459742 m!443007))

(declare-fun m!443009 () Bool)

(assert (=> b!459742 m!443009))

(declare-fun m!443011 () Bool)

(assert (=> b!459742 m!443011))

(declare-fun m!443013 () Bool)

(assert (=> b!459742 m!443013))

(assert (=> b!459742 m!443013))

(assert (=> b!459742 m!443011))

(declare-fun m!443015 () Bool)

(assert (=> b!459742 m!443015))

(declare-fun m!443017 () Bool)

(assert (=> b!459759 m!443017))

(declare-fun m!443019 () Bool)

(assert (=> b!459750 m!443019))

(declare-fun m!443021 () Bool)

(assert (=> b!459750 m!443021))

(declare-fun m!443023 () Bool)

(assert (=> b!459750 m!443023))

(declare-fun m!443025 () Bool)

(assert (=> mapNonEmpty!20212 m!443025))

(declare-fun m!443027 () Bool)

(assert (=> b!459761 m!443027))

(declare-fun m!443029 () Bool)

(assert (=> start!41176 m!443029))

(declare-fun m!443031 () Bool)

(assert (=> start!41176 m!443031))

(declare-fun m!443033 () Bool)

(assert (=> b!459756 m!443033))

(declare-fun m!443035 () Bool)

(assert (=> b!459747 m!443035))

(assert (=> b!459760 m!443007))

(declare-fun m!443037 () Bool)

(assert (=> b!459760 m!443037))

(declare-fun m!443039 () Bool)

(assert (=> b!459760 m!443039))

(declare-fun m!443041 () Bool)

(assert (=> b!459760 m!443041))

(assert (=> b!459760 m!443007))

(declare-fun m!443043 () Bool)

(assert (=> b!459760 m!443043))

(declare-fun m!443045 () Bool)

(assert (=> b!459760 m!443045))

(declare-fun m!443047 () Bool)

(assert (=> b!459746 m!443047))

(declare-fun m!443049 () Bool)

(assert (=> b!459745 m!443049))

(assert (=> b!459745 m!443049))

(declare-fun m!443051 () Bool)

(assert (=> b!459745 m!443051))

(assert (=> b!459745 m!443007))

(assert (=> b!459745 m!443007))

(declare-fun m!443053 () Bool)

(assert (=> b!459745 m!443053))

(declare-fun m!443055 () Bool)

(assert (=> b!459748 m!443055))

(declare-fun m!443057 () Bool)

(assert (=> b!459755 m!443057))

(check-sat (not b!459756) (not b!459761) (not b!459743) (not b_next!11037) (not b!459742) (not b!459760) (not b!459755) (not b_lambda!9901) b_and!19333 (not b!459747) (not b!459746) (not start!41176) (not b!459748) (not b!459750) (not b!459752) (not mapNonEmpty!20212) tp_is_empty!12375 (not b!459745))
(check-sat b_and!19333 (not b_next!11037))
