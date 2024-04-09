; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81970 () Bool)

(assert start!81970)

(declare-fun b_free!18437 () Bool)

(declare-fun b_next!18437 () Bool)

(assert (=> start!81970 (= b_free!18437 (not b_next!18437))))

(declare-fun tp!64012 () Bool)

(declare-fun b_and!29941 () Bool)

(assert (=> start!81970 (= tp!64012 b_and!29941)))

(declare-fun b!955707 () Bool)

(declare-fun res!640121 () Bool)

(declare-fun e!538415 () Bool)

(assert (=> b!955707 (=> (not res!640121) (not e!538415))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((array!58087 0))(
  ( (array!58088 (arr!27919 (Array (_ BitVec 32) (_ BitVec 64))) (size!28399 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58087)

(declare-datatypes ((V!32957 0))(
  ( (V!32958 (val!10541 Int)) )
))
(declare-datatypes ((ValueCell!10009 0))(
  ( (ValueCellFull!10009 (v!13096 V!32957)) (EmptyCell!10009) )
))
(declare-datatypes ((array!58089 0))(
  ( (array!58090 (arr!27920 (Array (_ BitVec 32) ValueCell!10009)) (size!28400 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58089)

(declare-fun mask!1823 () (_ BitVec 32))

(assert (=> b!955707 (= res!640121 (and (= (size!28400 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28399 _keys!1441) (size!28400 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!955708 () Bool)

(declare-fun res!640126 () Bool)

(assert (=> b!955708 (=> (not res!640126) (not e!538415))))

(declare-fun zeroValue!1139 () V!32957)

(declare-fun i!735 () (_ BitVec 32))

(declare-fun minValue!1139 () V!32957)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13784 0))(
  ( (tuple2!13785 (_1!6902 (_ BitVec 64)) (_2!6902 V!32957)) )
))
(declare-datatypes ((List!19602 0))(
  ( (Nil!19599) (Cons!19598 (h!20760 tuple2!13784) (t!27971 List!19602)) )
))
(declare-datatypes ((ListLongMap!12495 0))(
  ( (ListLongMap!12496 (toList!6263 List!19602)) )
))
(declare-fun contains!5313 (ListLongMap!12495 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3448 (array!58087 array!58089 (_ BitVec 32) (_ BitVec 32) V!32957 V!32957 (_ BitVec 32) Int) ListLongMap!12495)

(assert (=> b!955708 (= res!640126 (contains!5313 (getCurrentListMap!3448 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27919 _keys!1441) i!735)))))

(declare-fun b!955709 () Bool)

(declare-fun res!640122 () Bool)

(assert (=> b!955709 (=> (not res!640122) (not e!538415))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!955709 (= res!640122 (validKeyInArray!0 (select (arr!27919 _keys!1441) i!735)))))

(declare-fun b!955710 () Bool)

(declare-fun e!538412 () Bool)

(declare-fun tp_is_empty!20981 () Bool)

(assert (=> b!955710 (= e!538412 tp_is_empty!20981)))

(declare-fun b!955711 () Bool)

(declare-fun e!538414 () Bool)

(declare-fun e!538416 () Bool)

(declare-fun mapRes!33433 () Bool)

(assert (=> b!955711 (= e!538414 (and e!538416 mapRes!33433))))

(declare-fun condMapEmpty!33433 () Bool)

(declare-fun mapDefault!33433 () ValueCell!10009)

