; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78738 () Bool)

(assert start!78738)

(declare-fun b_free!16923 () Bool)

(declare-fun b_next!16923 () Bool)

(assert (=> start!78738 (= b_free!16923 (not b_next!16923))))

(declare-fun tp!59211 () Bool)

(declare-fun b_and!27601 () Bool)

(assert (=> start!78738 (= tp!59211 b_and!27601)))

(declare-fun b!917851 () Bool)

(declare-fun e!515298 () Bool)

(declare-fun tp_is_empty!19431 () Bool)

(assert (=> b!917851 (= e!515298 tp_is_empty!19431)))

(declare-fun b!917852 () Bool)

(declare-fun res!618928 () Bool)

(declare-fun e!515301 () Bool)

(assert (=> b!917852 (=> (not res!618928) (not e!515301))))

(declare-datatypes ((array!54854 0))(
  ( (array!54855 (arr!26368 (Array (_ BitVec 32) (_ BitVec 64))) (size!26828 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54854)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30873 0))(
  ( (V!30874 (val!9766 Int)) )
))
(declare-datatypes ((ValueCell!9234 0))(
  ( (ValueCellFull!9234 (v!12284 V!30873)) (EmptyCell!9234) )
))
(declare-datatypes ((array!54856 0))(
  ( (array!54857 (arr!26369 (Array (_ BitVec 32) ValueCell!9234)) (size!26829 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54856)

(assert (=> b!917852 (= res!618928 (and (= (size!26829 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26828 _keys!1487) (size!26829 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!30903 () Bool)

(declare-fun mapRes!30903 () Bool)

(assert (=> mapIsEmpty!30903 mapRes!30903))

(declare-fun b!917853 () Bool)

(declare-fun res!618923 () Bool)

(assert (=> b!917853 (=> (not res!618923) (not e!515301))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!917853 (= res!618923 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26828 _keys!1487))))))

(declare-fun b!917854 () Bool)

(declare-fun e!515304 () Bool)

(assert (=> b!917854 (= e!515304 tp_is_empty!19431)))

(declare-fun res!618930 () Bool)

(assert (=> start!78738 (=> (not res!618930) (not e!515301))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78738 (= res!618930 (validMask!0 mask!1881))))

(assert (=> start!78738 e!515301))

(assert (=> start!78738 true))

(assert (=> start!78738 tp_is_empty!19431))

(declare-fun e!515302 () Bool)

(declare-fun array_inv!20546 (array!54856) Bool)

(assert (=> start!78738 (and (array_inv!20546 _values!1231) e!515302)))

(assert (=> start!78738 tp!59211))

(declare-fun array_inv!20547 (array!54854) Bool)

(assert (=> start!78738 (array_inv!20547 _keys!1487)))

(declare-fun b!917855 () Bool)

(declare-fun e!515299 () Bool)

(declare-fun e!515300 () Bool)

(assert (=> b!917855 (= e!515299 e!515300)))

(declare-fun res!618929 () Bool)

(assert (=> b!917855 (=> (not res!618929) (not e!515300))))

(declare-fun lt!412081 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!917855 (= res!618929 (validKeyInArray!0 lt!412081))))

(assert (=> b!917855 (= lt!412081 (select (arr!26368 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!917856 () Bool)

(declare-fun res!618925 () Bool)

(assert (=> b!917856 (=> (not res!618925) (not e!515299))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun v!791 () V!30873)

(declare-datatypes ((tuple2!12758 0))(
  ( (tuple2!12759 (_1!6389 (_ BitVec 64)) (_2!6389 V!30873)) )
))
(declare-datatypes ((List!18607 0))(
  ( (Nil!18604) (Cons!18603 (h!19749 tuple2!12758) (t!26268 List!18607)) )
))
(declare-datatypes ((ListLongMap!11469 0))(
  ( (ListLongMap!11470 (toList!5750 List!18607)) )
))
(declare-fun lt!412082 () ListLongMap!11469)

(declare-fun apply!573 (ListLongMap!11469 (_ BitVec 64)) V!30873)

(assert (=> b!917856 (= res!618925 (= (apply!573 lt!412082 k0!1099) v!791))))

(declare-fun b!917857 () Bool)

(declare-fun res!618932 () Bool)

(assert (=> b!917857 (=> (not res!618932) (not e!515299))))

(assert (=> b!917857 (= res!618932 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!917858 () Bool)

(declare-fun res!618926 () Bool)

(assert (=> b!917858 (=> (not res!618926) (not e!515301))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54854 (_ BitVec 32)) Bool)

(assert (=> b!917858 (= res!618926 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapNonEmpty!30903 () Bool)

(declare-fun tp!59210 () Bool)

(assert (=> mapNonEmpty!30903 (= mapRes!30903 (and tp!59210 e!515304))))

(declare-fun mapRest!30903 () (Array (_ BitVec 32) ValueCell!9234))

(declare-fun mapValue!30903 () ValueCell!9234)

(declare-fun mapKey!30903 () (_ BitVec 32))

(assert (=> mapNonEmpty!30903 (= (arr!26369 _values!1231) (store mapRest!30903 mapKey!30903 mapValue!30903))))

(declare-fun b!917859 () Bool)

(assert (=> b!917859 (= e!515300 (not true))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30873)

(declare-fun minValue!1173 () V!30873)

(declare-fun getCurrentListMap!2976 (array!54854 array!54856 (_ BitVec 32) (_ BitVec 32) V!30873 V!30873 (_ BitVec 32) Int) ListLongMap!11469)

(declare-fun +!2582 (ListLongMap!11469 tuple2!12758) ListLongMap!11469)

(declare-fun get!13835 (ValueCell!9234 V!30873) V!30873)

(declare-fun dynLambda!1421 (Int (_ BitVec 64)) V!30873)

(assert (=> b!917859 (= (getCurrentListMap!2976 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2582 (getCurrentListMap!2976 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) (tuple2!12759 lt!412081 (get!13835 (select (arr!26369 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1421 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!30971 0))(
  ( (Unit!30972) )
))
(declare-fun lt!412083 () Unit!30971)

(declare-fun lemmaListMapRecursiveValidKeyArray!17 (array!54854 array!54856 (_ BitVec 32) (_ BitVec 32) V!30873 V!30873 (_ BitVec 32) Int) Unit!30971)

(assert (=> b!917859 (= lt!412083 (lemmaListMapRecursiveValidKeyArray!17 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!917860 () Bool)

(declare-fun res!618931 () Bool)

(assert (=> b!917860 (=> (not res!618931) (not e!515299))))

(assert (=> b!917860 (= res!618931 (validKeyInArray!0 k0!1099))))

(declare-fun b!917861 () Bool)

(assert (=> b!917861 (= e!515302 (and e!515298 mapRes!30903))))

(declare-fun condMapEmpty!30903 () Bool)

(declare-fun mapDefault!30903 () ValueCell!9234)

(assert (=> b!917861 (= condMapEmpty!30903 (= (arr!26369 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9234)) mapDefault!30903)))))

(declare-fun b!917862 () Bool)

(declare-fun res!618927 () Bool)

(assert (=> b!917862 (=> (not res!618927) (not e!515301))))

(declare-datatypes ((List!18608 0))(
  ( (Nil!18605) (Cons!18604 (h!19750 (_ BitVec 64)) (t!26269 List!18608)) )
))
(declare-fun arrayNoDuplicates!0 (array!54854 (_ BitVec 32) List!18608) Bool)

(assert (=> b!917862 (= res!618927 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18605))))

(declare-fun b!917863 () Bool)

(assert (=> b!917863 (= e!515301 e!515299)))

(declare-fun res!618924 () Bool)

(assert (=> b!917863 (=> (not res!618924) (not e!515299))))

(declare-fun contains!4764 (ListLongMap!11469 (_ BitVec 64)) Bool)

(assert (=> b!917863 (= res!618924 (contains!4764 lt!412082 k0!1099))))

(assert (=> b!917863 (= lt!412082 (getCurrentListMap!2976 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(assert (= (and start!78738 res!618930) b!917852))

(assert (= (and b!917852 res!618928) b!917858))

(assert (= (and b!917858 res!618926) b!917862))

(assert (= (and b!917862 res!618927) b!917853))

(assert (= (and b!917853 res!618923) b!917863))

(assert (= (and b!917863 res!618924) b!917856))

(assert (= (and b!917856 res!618925) b!917857))

(assert (= (and b!917857 res!618932) b!917860))

(assert (= (and b!917860 res!618931) b!917855))

(assert (= (and b!917855 res!618929) b!917859))

(assert (= (and b!917861 condMapEmpty!30903) mapIsEmpty!30903))

(assert (= (and b!917861 (not condMapEmpty!30903)) mapNonEmpty!30903))

(get-info :version)

(assert (= (and mapNonEmpty!30903 ((_ is ValueCellFull!9234) mapValue!30903)) b!917854))

(assert (= (and b!917861 ((_ is ValueCellFull!9234) mapDefault!30903)) b!917851))

(assert (= start!78738 b!917861))

(declare-fun b_lambda!13455 () Bool)

(assert (=> (not b_lambda!13455) (not b!917859)))

(declare-fun t!26267 () Bool)

(declare-fun tb!5511 () Bool)

(assert (=> (and start!78738 (= defaultEntry!1235 defaultEntry!1235) t!26267) tb!5511))

(declare-fun result!10837 () Bool)

(assert (=> tb!5511 (= result!10837 tp_is_empty!19431)))

(assert (=> b!917859 t!26267))

(declare-fun b_and!27603 () Bool)

(assert (= b_and!27601 (and (=> t!26267 result!10837) b_and!27603)))

(declare-fun m!851661 () Bool)

(assert (=> b!917859 m!851661))

(declare-fun m!851663 () Bool)

(assert (=> b!917859 m!851663))

(declare-fun m!851665 () Bool)

(assert (=> b!917859 m!851665))

(declare-fun m!851667 () Bool)

(assert (=> b!917859 m!851667))

(assert (=> b!917859 m!851661))

(assert (=> b!917859 m!851663))

(declare-fun m!851669 () Bool)

(assert (=> b!917859 m!851669))

(declare-fun m!851671 () Bool)

(assert (=> b!917859 m!851671))

(assert (=> b!917859 m!851665))

(declare-fun m!851673 () Bool)

(assert (=> b!917859 m!851673))

(declare-fun m!851675 () Bool)

(assert (=> b!917855 m!851675))

(declare-fun m!851677 () Bool)

(assert (=> b!917855 m!851677))

(declare-fun m!851679 () Bool)

(assert (=> b!917863 m!851679))

(declare-fun m!851681 () Bool)

(assert (=> b!917863 m!851681))

(declare-fun m!851683 () Bool)

(assert (=> b!917858 m!851683))

(declare-fun m!851685 () Bool)

(assert (=> b!917862 m!851685))

(declare-fun m!851687 () Bool)

(assert (=> b!917860 m!851687))

(declare-fun m!851689 () Bool)

(assert (=> b!917856 m!851689))

(declare-fun m!851691 () Bool)

(assert (=> start!78738 m!851691))

(declare-fun m!851693 () Bool)

(assert (=> start!78738 m!851693))

(declare-fun m!851695 () Bool)

(assert (=> start!78738 m!851695))

(declare-fun m!851697 () Bool)

(assert (=> mapNonEmpty!30903 m!851697))

(check-sat (not b!917860) (not b!917862) tp_is_empty!19431 (not b!917855) b_and!27603 (not b!917856) (not b!917858) (not b_next!16923) (not mapNonEmpty!30903) (not start!78738) (not b!917859) (not b_lambda!13455) (not b!917863))
(check-sat b_and!27603 (not b_next!16923))
