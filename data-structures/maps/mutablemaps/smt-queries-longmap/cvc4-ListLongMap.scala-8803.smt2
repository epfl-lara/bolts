; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107082 () Bool)

(assert start!107082)

(declare-fun b_free!27551 () Bool)

(declare-fun b_next!27551 () Bool)

(assert (=> start!107082 (= b_free!27551 (not b_next!27551))))

(declare-fun tp!96881 () Bool)

(declare-fun b_and!45593 () Bool)

(assert (=> start!107082 (= tp!96881 b_and!45593)))

(declare-fun res!844644 () Bool)

(declare-fun e!723319 () Bool)

(assert (=> start!107082 (=> (not res!844644) (not e!723319))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107082 (= res!844644 (validMask!0 mask!1730))))

(assert (=> start!107082 e!723319))

(declare-datatypes ((V!48839 0))(
  ( (V!48840 (val!16442 Int)) )
))
(declare-datatypes ((ValueCell!15514 0))(
  ( (ValueCellFull!15514 (v!19077 V!48839)) (EmptyCell!15514) )
))
(declare-datatypes ((array!82713 0))(
  ( (array!82714 (arr!39889 (Array (_ BitVec 32) ValueCell!15514)) (size!40426 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82713)

(declare-fun e!723320 () Bool)

(declare-fun array_inv!30311 (array!82713) Bool)

(assert (=> start!107082 (and (array_inv!30311 _values!1134) e!723320)))

(assert (=> start!107082 true))

(declare-datatypes ((array!82715 0))(
  ( (array!82716 (arr!39890 (Array (_ BitVec 32) (_ BitVec 64))) (size!40427 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82715)

(declare-fun array_inv!30312 (array!82715) Bool)

(assert (=> start!107082 (array_inv!30312 _keys!1364)))

(declare-fun tp_is_empty!32735 () Bool)

(assert (=> start!107082 tp_is_empty!32735))

(assert (=> start!107082 tp!96881))

(declare-fun b!1269049 () Bool)

(declare-fun res!844642 () Bool)

(assert (=> b!1269049 (=> (not res!844642) (not e!723319))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82715 (_ BitVec 32)) Bool)

(assert (=> b!1269049 (= res!844642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1269050 () Bool)

(declare-fun res!844646 () Bool)

(assert (=> b!1269050 (=> (not res!844646) (not e!723319))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1269050 (= res!844646 (and (= (size!40426 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40427 _keys!1364) (size!40426 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1269051 () Bool)

(declare-fun res!844643 () Bool)

(assert (=> b!1269051 (=> (not res!844643) (not e!723319))))

(declare-datatypes ((List!28587 0))(
  ( (Nil!28584) (Cons!28583 (h!29792 (_ BitVec 64)) (t!42123 List!28587)) )
))
(declare-fun arrayNoDuplicates!0 (array!82715 (_ BitVec 32) List!28587) Bool)

(assert (=> b!1269051 (= res!844643 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28584))))

(declare-fun b!1269052 () Bool)

(declare-fun e!723321 () Bool)

(assert (=> b!1269052 (= e!723321 tp_is_empty!32735)))

(declare-fun mapIsEmpty!50683 () Bool)

(declare-fun mapRes!50683 () Bool)

(assert (=> mapIsEmpty!50683 mapRes!50683))

(declare-fun b!1269053 () Bool)

(assert (=> b!1269053 (= e!723320 (and e!723321 mapRes!50683))))

(declare-fun condMapEmpty!50683 () Bool)

(declare-fun mapDefault!50683 () ValueCell!15514)

