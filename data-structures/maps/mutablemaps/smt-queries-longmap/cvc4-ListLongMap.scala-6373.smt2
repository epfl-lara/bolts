; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82006 () Bool)

(assert start!82006)

(declare-fun b!956035 () Bool)

(declare-fun e!538684 () Bool)

(declare-fun tp_is_empty!21017 () Bool)

(assert (=> b!956035 (= e!538684 tp_is_empty!21017)))

(declare-fun mapNonEmpty!33487 () Bool)

(declare-fun mapRes!33487 () Bool)

(declare-fun tp!64066 () Bool)

(assert (=> mapNonEmpty!33487 (= mapRes!33487 (and tp!64066 e!538684))))

(declare-datatypes ((V!33005 0))(
  ( (V!33006 (val!10559 Int)) )
))
(declare-datatypes ((ValueCell!10027 0))(
  ( (ValueCellFull!10027 (v!13114 V!33005)) (EmptyCell!10027) )
))
(declare-fun mapRest!33487 () (Array (_ BitVec 32) ValueCell!10027))

(declare-fun mapValue!33487 () ValueCell!10027)

(declare-datatypes ((array!58155 0))(
  ( (array!58156 (arr!27953 (Array (_ BitVec 32) ValueCell!10027)) (size!28433 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58155)

(declare-fun mapKey!33487 () (_ BitVec 32))

(assert (=> mapNonEmpty!33487 (= (arr!27953 _values!1197) (store mapRest!33487 mapKey!33487 mapValue!33487))))

(declare-fun b!956036 () Bool)

(declare-fun res!640286 () Bool)

(declare-fun e!538683 () Bool)

(assert (=> b!956036 (=> (not res!640286) (not e!538683))))

(declare-datatypes ((array!58157 0))(
  ( (array!58158 (arr!27954 (Array (_ BitVec 32) (_ BitVec 64))) (size!28434 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58157)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58157 (_ BitVec 32)) Bool)

(assert (=> b!956036 (= res!640286 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!956037 () Bool)

(assert (=> b!956037 (= e!538683 false)))

(declare-fun lt!430048 () Bool)

(declare-datatypes ((List!19616 0))(
  ( (Nil!19613) (Cons!19612 (h!20774 (_ BitVec 64)) (t!27985 List!19616)) )
))
(declare-fun arrayNoDuplicates!0 (array!58157 (_ BitVec 32) List!19616) Bool)

(assert (=> b!956037 (= lt!430048 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19613))))

(declare-fun b!956038 () Bool)

(declare-fun res!640287 () Bool)

(assert (=> b!956038 (=> (not res!640287) (not e!538683))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!956038 (= res!640287 (and (= (size!28433 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28434 _keys!1441) (size!28433 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun res!640288 () Bool)

(assert (=> start!82006 (=> (not res!640288) (not e!538683))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82006 (= res!640288 (validMask!0 mask!1823))))

(assert (=> start!82006 e!538683))

(assert (=> start!82006 true))

(declare-fun e!538686 () Bool)

(declare-fun array_inv!21637 (array!58155) Bool)

(assert (=> start!82006 (and (array_inv!21637 _values!1197) e!538686)))

(declare-fun array_inv!21638 (array!58157) Bool)

(assert (=> start!82006 (array_inv!21638 _keys!1441)))

(declare-fun mapIsEmpty!33487 () Bool)

(assert (=> mapIsEmpty!33487 mapRes!33487))

(declare-fun b!956039 () Bool)

(declare-fun e!538685 () Bool)

(assert (=> b!956039 (= e!538686 (and e!538685 mapRes!33487))))

(declare-fun condMapEmpty!33487 () Bool)

(declare-fun mapDefault!33487 () ValueCell!10027)

