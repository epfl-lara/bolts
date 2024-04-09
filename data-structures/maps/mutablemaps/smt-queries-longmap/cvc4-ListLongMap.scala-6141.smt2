; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78986 () Bool)

(assert start!78986)

(declare-fun b_free!17171 () Bool)

(declare-fun b_next!17171 () Bool)

(assert (=> start!78986 (= b_free!17171 (not b_next!17171))))

(declare-fun tp!59954 () Bool)

(declare-fun b_and!28097 () Bool)

(assert (=> start!78986 (= tp!59954 b_and!28097)))

(declare-fun b!923695 () Bool)

(declare-datatypes ((Unit!31176 0))(
  ( (Unit!31177) )
))
(declare-fun e!518336 () Unit!31176)

(declare-fun Unit!31178 () Unit!31176)

(assert (=> b!923695 (= e!518336 Unit!31178)))

(declare-fun b!923696 () Bool)

(declare-fun e!518340 () Bool)

(declare-fun tp_is_empty!19679 () Bool)

(assert (=> b!923696 (= e!518340 tp_is_empty!19679)))

(declare-fun b!923697 () Bool)

(declare-fun res!622854 () Bool)

(declare-fun e!518330 () Bool)

(assert (=> b!923697 (=> (not res!622854) (not e!518330))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!55344 0))(
  ( (array!55345 (arr!26613 (Array (_ BitVec 32) (_ BitVec 64))) (size!27073 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55344)

(assert (=> b!923697 (= res!622854 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27073 _keys!1487))))))

(declare-fun b!923698 () Bool)

(declare-fun e!518339 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!923698 (= e!518339 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!923699 () Bool)

(declare-fun e!518335 () Bool)

(declare-fun e!518329 () Bool)

(assert (=> b!923699 (= e!518335 e!518329)))

(declare-fun res!622852 () Bool)

(assert (=> b!923699 (=> (not res!622852) (not e!518329))))

(declare-datatypes ((V!31203 0))(
  ( (V!31204 (val!9890 Int)) )
))
(declare-fun v!791 () V!31203)

(declare-fun lt!415150 () V!31203)

(assert (=> b!923699 (= res!622852 (and (= lt!415150 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!12988 0))(
  ( (tuple2!12989 (_1!6504 (_ BitVec 64)) (_2!6504 V!31203)) )
))
(declare-datatypes ((List!18824 0))(
  ( (Nil!18821) (Cons!18820 (h!19966 tuple2!12988) (t!26733 List!18824)) )
))
(declare-datatypes ((ListLongMap!11699 0))(
  ( (ListLongMap!11700 (toList!5865 List!18824)) )
))
(declare-fun lt!415142 () ListLongMap!11699)

(declare-fun apply!668 (ListLongMap!11699 (_ BitVec 64)) V!31203)

(assert (=> b!923699 (= lt!415150 (apply!668 lt!415142 k!1099))))

(declare-fun b!923700 () Bool)

(declare-fun e!518331 () Unit!31176)

(declare-fun Unit!31179 () Unit!31176)

(assert (=> b!923700 (= e!518331 Unit!31179)))

(declare-fun res!622856 () Bool)

(assert (=> start!78986 (=> (not res!622856) (not e!518330))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78986 (= res!622856 (validMask!0 mask!1881))))

(assert (=> start!78986 e!518330))

(assert (=> start!78986 true))

(assert (=> start!78986 tp_is_empty!19679))

(declare-datatypes ((ValueCell!9358 0))(
  ( (ValueCellFull!9358 (v!12408 V!31203)) (EmptyCell!9358) )
))
(declare-datatypes ((array!55346 0))(
  ( (array!55347 (arr!26614 (Array (_ BitVec 32) ValueCell!9358)) (size!27074 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55346)

(declare-fun e!518332 () Bool)

(declare-fun array_inv!20722 (array!55346) Bool)

(assert (=> start!78986 (and (array_inv!20722 _values!1231) e!518332)))

(assert (=> start!78986 tp!59954))

(declare-fun array_inv!20723 (array!55344) Bool)

(assert (=> start!78986 (array_inv!20723 _keys!1487)))

(declare-fun b!923701 () Bool)

(declare-fun e!518338 () Bool)

(declare-fun e!518333 () Bool)

(assert (=> b!923701 (= e!518338 e!518333)))

(declare-fun res!622855 () Bool)

(assert (=> b!923701 (=> (not res!622855) (not e!518333))))

(declare-fun lt!415139 () ListLongMap!11699)

(declare-fun contains!4889 (ListLongMap!11699 (_ BitVec 64)) Bool)

(assert (=> b!923701 (= res!622855 (contains!4889 lt!415139 k!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31203)

(declare-fun minValue!1173 () V!31203)

(declare-fun getCurrentListMap!3083 (array!55344 array!55346 (_ BitVec 32) (_ BitVec 32) V!31203 V!31203 (_ BitVec 32) Int) ListLongMap!11699)

(assert (=> b!923701 (= lt!415139 (getCurrentListMap!3083 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun mapNonEmpty!31275 () Bool)

(declare-fun mapRes!31275 () Bool)

(declare-fun tp!59955 () Bool)

(assert (=> mapNonEmpty!31275 (= mapRes!31275 (and tp!59955 e!518340))))

(declare-fun mapKey!31275 () (_ BitVec 32))

(declare-fun mapRest!31275 () (Array (_ BitVec 32) ValueCell!9358))

(declare-fun mapValue!31275 () ValueCell!9358)

(assert (=> mapNonEmpty!31275 (= (arr!26614 _values!1231) (store mapRest!31275 mapKey!31275 mapValue!31275))))

(declare-fun b!923702 () Bool)

(declare-fun res!622853 () Bool)

(assert (=> b!923702 (=> (not res!622853) (not e!518330))))

(declare-datatypes ((List!18825 0))(
  ( (Nil!18822) (Cons!18821 (h!19967 (_ BitVec 64)) (t!26734 List!18825)) )
))
(declare-fun arrayNoDuplicates!0 (array!55344 (_ BitVec 32) List!18825) Bool)

(assert (=> b!923702 (= res!622853 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18822))))

(declare-fun b!923703 () Bool)

(declare-fun e!518337 () Bool)

(assert (=> b!923703 (= e!518332 (and e!518337 mapRes!31275))))

(declare-fun condMapEmpty!31275 () Bool)

(declare-fun mapDefault!31275 () ValueCell!9358)

