; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94026 () Bool)

(assert start!94026)

(declare-fun b_free!21427 () Bool)

(declare-fun b_next!21427 () Bool)

(assert (=> start!94026 (= b_free!21427 (not b_next!21427))))

(declare-fun tp!75710 () Bool)

(declare-fun b_and!34177 () Bool)

(assert (=> start!94026 (= tp!75710 b_and!34177)))

(declare-fun b!1062948 () Bool)

(declare-fun e!605615 () Bool)

(declare-fun e!605614 () Bool)

(assert (=> b!1062948 (= e!605615 e!605614)))

(declare-fun res!709815 () Bool)

(assert (=> b!1062948 (=> res!709815 e!605614)))

(declare-datatypes ((V!38785 0))(
  ( (V!38786 (val!12669 Int)) )
))
(declare-datatypes ((tuple2!16122 0))(
  ( (tuple2!16123 (_1!8071 (_ BitVec 64)) (_2!8071 V!38785)) )
))
(declare-datatypes ((List!22731 0))(
  ( (Nil!22728) (Cons!22727 (h!23936 tuple2!16122) (t!32051 List!22731)) )
))
(declare-datatypes ((ListLongMap!14103 0))(
  ( (ListLongMap!14104 (toList!7067 List!22731)) )
))
(declare-fun lt!468425 () ListLongMap!14103)

(declare-fun contains!6263 (ListLongMap!14103 (_ BitVec 64)) Bool)

(assert (=> b!1062948 (= res!709815 (contains!6263 lt!468425 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!38785)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38785)

(declare-datatypes ((ValueCell!11915 0))(
  ( (ValueCellFull!11915 (v!15281 V!38785)) (EmptyCell!11915) )
))
(declare-datatypes ((array!67450 0))(
  ( (array!67451 (arr!32427 (Array (_ BitVec 32) ValueCell!11915)) (size!32964 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67450)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67452 0))(
  ( (array!67453 (arr!32428 (Array (_ BitVec 32) (_ BitVec 64))) (size!32965 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67452)

(declare-fun getCurrentListMap!4012 (array!67452 array!67450 (_ BitVec 32) (_ BitVec 32) V!38785 V!38785 (_ BitVec 32) Int) ListLongMap!14103)

(assert (=> b!1062948 (= lt!468425 (getCurrentListMap!4012 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!709816 () Bool)

(declare-fun e!605620 () Bool)

(assert (=> start!94026 (=> (not res!709816) (not e!605620))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94026 (= res!709816 (validMask!0 mask!1515))))

(assert (=> start!94026 e!605620))

(assert (=> start!94026 true))

(declare-fun tp_is_empty!25237 () Bool)

(assert (=> start!94026 tp_is_empty!25237))

(declare-fun e!605617 () Bool)

(declare-fun array_inv!24958 (array!67450) Bool)

(assert (=> start!94026 (and (array_inv!24958 _values!955) e!605617)))

(assert (=> start!94026 tp!75710))

(declare-fun array_inv!24959 (array!67452) Bool)

(assert (=> start!94026 (array_inv!24959 _keys!1163)))

(declare-fun b!1062949 () Bool)

(declare-fun res!709820 () Bool)

(assert (=> b!1062949 (=> (not res!709820) (not e!605620))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67452 (_ BitVec 32)) Bool)

(assert (=> b!1062949 (= res!709820 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1062950 () Bool)

(declare-fun e!605616 () Bool)

(declare-fun mapRes!39532 () Bool)

(assert (=> b!1062950 (= e!605617 (and e!605616 mapRes!39532))))

(declare-fun condMapEmpty!39532 () Bool)

(declare-fun mapDefault!39532 () ValueCell!11915)

