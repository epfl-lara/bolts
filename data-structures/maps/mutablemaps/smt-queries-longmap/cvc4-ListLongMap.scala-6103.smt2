; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78758 () Bool)

(assert start!78758)

(declare-fun b_free!16943 () Bool)

(declare-fun b_next!16943 () Bool)

(assert (=> start!78758 (= b_free!16943 (not b_next!16943))))

(declare-fun tp!59271 () Bool)

(declare-fun b_and!27641 () Bool)

(assert (=> start!78758 (= tp!59271 b_and!27641)))

(declare-fun b!918261 () Bool)

(declare-fun e!515510 () Bool)

(declare-fun tp_is_empty!19451 () Bool)

(assert (=> b!918261 (= e!515510 tp_is_empty!19451)))

(declare-fun b!918262 () Bool)

(declare-fun res!619230 () Bool)

(declare-fun e!515512 () Bool)

(assert (=> b!918262 (=> (not res!619230) (not e!515512))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((V!30899 0))(
  ( (V!30900 (val!9776 Int)) )
))
(declare-fun v!791 () V!30899)

(declare-datatypes ((tuple2!12778 0))(
  ( (tuple2!12779 (_1!6399 (_ BitVec 64)) (_2!6399 V!30899)) )
))
(declare-datatypes ((List!18623 0))(
  ( (Nil!18620) (Cons!18619 (h!19765 tuple2!12778) (t!26304 List!18623)) )
))
(declare-datatypes ((ListLongMap!11489 0))(
  ( (ListLongMap!11490 (toList!5760 List!18623)) )
))
(declare-fun lt!412173 () ListLongMap!11489)

(declare-fun apply!580 (ListLongMap!11489 (_ BitVec 64)) V!30899)

(assert (=> b!918262 (= res!619230 (= (apply!580 lt!412173 k!1099) v!791))))

(declare-fun b!918263 () Bool)

(declare-fun e!515509 () Bool)

(assert (=> b!918263 (= e!515509 e!515512)))

(declare-fun res!619228 () Bool)

(assert (=> b!918263 (=> (not res!619228) (not e!515512))))

(declare-fun contains!4774 (ListLongMap!11489 (_ BitVec 64)) Bool)

(assert (=> b!918263 (= res!619228 (contains!4774 lt!412173 k!1099))))

(declare-datatypes ((array!54894 0))(
  ( (array!54895 (arr!26388 (Array (_ BitVec 32) (_ BitVec 64))) (size!26848 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54894)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9244 0))(
  ( (ValueCellFull!9244 (v!12294 V!30899)) (EmptyCell!9244) )
))
(declare-datatypes ((array!54896 0))(
  ( (array!54897 (arr!26389 (Array (_ BitVec 32) ValueCell!9244)) (size!26849 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54896)

(declare-fun defaultEntry!1235 () Int)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!30899)

(declare-fun minValue!1173 () V!30899)

(declare-fun getCurrentListMap!2986 (array!54894 array!54896 (_ BitVec 32) (_ BitVec 32) V!30899 V!30899 (_ BitVec 32) Int) ListLongMap!11489)

(assert (=> b!918263 (= lt!412173 (getCurrentListMap!2986 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!918264 () Bool)

(declare-fun res!619232 () Bool)

(assert (=> b!918264 (=> (not res!619232) (not e!515509))))

(assert (=> b!918264 (= res!619232 (and (= (size!26849 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26848 _keys!1487) (size!26849 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun res!619231 () Bool)

(assert (=> start!78758 (=> (not res!619231) (not e!515509))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78758 (= res!619231 (validMask!0 mask!1881))))

(assert (=> start!78758 e!515509))

(assert (=> start!78758 true))

(assert (=> start!78758 tp_is_empty!19451))

(declare-fun e!515513 () Bool)

(declare-fun array_inv!20562 (array!54896) Bool)

(assert (=> start!78758 (and (array_inv!20562 _values!1231) e!515513)))

(assert (=> start!78758 tp!59271))

(declare-fun array_inv!20563 (array!54894) Bool)

(assert (=> start!78758 (array_inv!20563 _keys!1487)))

(declare-fun b!918265 () Bool)

(declare-fun e!515514 () Bool)

(assert (=> b!918265 (= e!515512 e!515514)))

(declare-fun res!619224 () Bool)

(assert (=> b!918265 (=> (not res!619224) (not e!515514))))

(declare-fun lt!412172 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!918265 (= res!619224 (validKeyInArray!0 lt!412172))))

(assert (=> b!918265 (= lt!412172 (select (arr!26388 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!918266 () Bool)

(declare-fun mapRes!30933 () Bool)

(assert (=> b!918266 (= e!515513 (and e!515510 mapRes!30933))))

(declare-fun condMapEmpty!30933 () Bool)

(declare-fun mapDefault!30933 () ValueCell!9244)

