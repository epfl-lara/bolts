; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107168 () Bool)

(assert start!107168)

(declare-fun b_free!27637 () Bool)

(declare-fun b_next!27637 () Bool)

(assert (=> start!107168 (= b_free!27637 (not b_next!27637))))

(declare-fun tp!97139 () Bool)

(declare-fun b_and!45679 () Bool)

(assert (=> start!107168 (= tp!97139 b_and!45679)))

(declare-fun b!1270081 () Bool)

(declare-fun e!723964 () Bool)

(declare-fun tp_is_empty!32821 () Bool)

(assert (=> b!1270081 (= e!723964 tp_is_empty!32821)))

(declare-fun b!1270083 () Bool)

(declare-fun res!845291 () Bool)

(declare-fun e!723966 () Bool)

(assert (=> b!1270083 (=> (not res!845291) (not e!723966))))

(declare-fun from!1698 () (_ BitVec 32))

(declare-datatypes ((array!82875 0))(
  ( (array!82876 (arr!39970 (Array (_ BitVec 32) (_ BitVec 64))) (size!40507 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82875)

(assert (=> b!1270083 (= res!845291 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40507 _keys!1364)) (bvslt from!1698 (size!40507 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun b!1270084 () Bool)

(declare-fun res!845288 () Bool)

(assert (=> b!1270084 (=> (not res!845288) (not e!723966))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82875 (_ BitVec 32)) Bool)

(assert (=> b!1270084 (= res!845288 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1270085 () Bool)

(declare-fun e!723967 () Bool)

(assert (=> b!1270085 (= e!723967 tp_is_empty!32821)))

(declare-fun b!1270086 () Bool)

(declare-fun e!723965 () Bool)

(declare-fun mapRes!50812 () Bool)

(assert (=> b!1270086 (= e!723965 (and e!723964 mapRes!50812))))

(declare-fun condMapEmpty!50812 () Bool)

(declare-datatypes ((V!48955 0))(
  ( (V!48956 (val!16485 Int)) )
))
(declare-datatypes ((ValueCell!15557 0))(
  ( (ValueCellFull!15557 (v!19120 V!48955)) (EmptyCell!15557) )
))
(declare-datatypes ((array!82877 0))(
  ( (array!82878 (arr!39971 (Array (_ BitVec 32) ValueCell!15557)) (size!40508 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82877)

(declare-fun mapDefault!50812 () ValueCell!15557)

