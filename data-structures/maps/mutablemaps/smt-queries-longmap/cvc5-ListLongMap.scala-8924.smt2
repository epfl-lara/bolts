; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108262 () Bool)

(assert start!108262)

(declare-fun b_free!27907 () Bool)

(declare-fun b_next!27907 () Bool)

(assert (=> start!108262 (= b_free!27907 (not b_next!27907))))

(declare-fun tp!98681 () Bool)

(declare-fun b_and!45977 () Bool)

(assert (=> start!108262 (= tp!98681 b_and!45977)))

(declare-fun b!1277843 () Bool)

(declare-fun res!849126 () Bool)

(declare-fun e!729865 () Bool)

(assert (=> b!1277843 (=> (not res!849126) (not e!729865))))

(declare-datatypes ((array!83951 0))(
  ( (array!83952 (arr!40480 (Array (_ BitVec 32) (_ BitVec 64))) (size!41031 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83951)

(declare-datatypes ((List!28890 0))(
  ( (Nil!28887) (Cons!28886 (h!30095 (_ BitVec 64)) (t!42437 List!28890)) )
))
(declare-fun arrayNoDuplicates!0 (array!83951 (_ BitVec 32) List!28890) Bool)

(assert (=> b!1277843 (= res!849126 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28887))))

(declare-fun b!1277844 () Bool)

(declare-fun e!729862 () Bool)

(declare-fun tp_is_empty!33457 () Bool)

(assert (=> b!1277844 (= e!729862 tp_is_empty!33457)))

(declare-fun res!849123 () Bool)

(assert (=> start!108262 (=> (not res!849123) (not e!729865))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108262 (= res!849123 (validMask!0 mask!1805))))

(assert (=> start!108262 e!729865))

(assert (=> start!108262 true))

(assert (=> start!108262 tp!98681))

(assert (=> start!108262 tp_is_empty!33457))

(declare-datatypes ((V!49713 0))(
  ( (V!49714 (val!16803 Int)) )
))
(declare-datatypes ((ValueCell!15830 0))(
  ( (ValueCellFull!15830 (v!19400 V!49713)) (EmptyCell!15830) )
))
(declare-datatypes ((array!83953 0))(
  ( (array!83954 (arr!40481 (Array (_ BitVec 32) ValueCell!15830)) (size!41032 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83953)

(declare-fun e!729866 () Bool)

(declare-fun array_inv!30723 (array!83953) Bool)

(assert (=> start!108262 (and (array_inv!30723 _values!1187) e!729866)))

(declare-fun array_inv!30724 (array!83951) Bool)

(assert (=> start!108262 (array_inv!30724 _keys!1427)))

(declare-fun mapNonEmpty!51722 () Bool)

(declare-fun mapRes!51722 () Bool)

(declare-fun tp!98682 () Bool)

(declare-fun e!729863 () Bool)

(assert (=> mapNonEmpty!51722 (= mapRes!51722 (and tp!98682 e!729863))))

(declare-fun mapValue!51722 () ValueCell!15830)

(declare-fun mapKey!51722 () (_ BitVec 32))

(declare-fun mapRest!51722 () (Array (_ BitVec 32) ValueCell!15830))

(assert (=> mapNonEmpty!51722 (= (arr!40481 _values!1187) (store mapRest!51722 mapKey!51722 mapValue!51722))))

(declare-fun mapIsEmpty!51722 () Bool)

(assert (=> mapIsEmpty!51722 mapRes!51722))

(declare-fun b!1277845 () Bool)

(declare-fun res!849124 () Bool)

(assert (=> b!1277845 (=> (not res!849124) (not e!729865))))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(assert (=> b!1277845 (= res!849124 (and (= (size!41032 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!41031 _keys!1427) (size!41032 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1277846 () Bool)

(assert (=> b!1277846 (= e!729863 tp_is_empty!33457)))

(declare-fun b!1277847 () Bool)

(assert (=> b!1277847 (= e!729866 (and e!729862 mapRes!51722))))

(declare-fun condMapEmpty!51722 () Bool)

(declare-fun mapDefault!51722 () ValueCell!15830)

