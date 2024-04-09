; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71040 () Bool)

(assert start!71040)

(declare-fun b_free!13219 () Bool)

(declare-fun b_next!13219 () Bool)

(assert (=> start!71040 (= b_free!13219 (not b_next!13219))))

(declare-fun tp!46410 () Bool)

(declare-fun b_and!22141 () Bool)

(assert (=> start!71040 (= tp!46410 b_and!22141)))

(declare-fun mapIsEmpty!24013 () Bool)

(declare-fun mapRes!24013 () Bool)

(assert (=> mapIsEmpty!24013 mapRes!24013))

(declare-fun b!824509 () Bool)

(declare-fun e!458801 () Bool)

(assert (=> b!824509 (= e!458801 true)))

(declare-datatypes ((V!24907 0))(
  ( (V!24908 (val!7512 Int)) )
))
(declare-fun zeroValueBefore!34 () V!24907)

(declare-datatypes ((tuple2!9932 0))(
  ( (tuple2!9933 (_1!4976 (_ BitVec 64)) (_2!4976 V!24907)) )
))
(declare-datatypes ((List!15783 0))(
  ( (Nil!15780) (Cons!15779 (h!16908 tuple2!9932) (t!22134 List!15783)) )
))
(declare-datatypes ((ListLongMap!8769 0))(
  ( (ListLongMap!8770 (toList!4400 List!15783)) )
))
(declare-fun lt!371887 () ListLongMap!8769)

(declare-datatypes ((array!46004 0))(
  ( (array!46005 (arr!22045 (Array (_ BitVec 32) (_ BitVec 64))) (size!22466 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46004)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!24907)

(declare-datatypes ((ValueCell!7049 0))(
  ( (ValueCellFull!7049 (v!9941 V!24907)) (EmptyCell!7049) )
))
(declare-datatypes ((array!46006 0))(
  ( (array!46007 (arr!22046 (Array (_ BitVec 32) ValueCell!7049)) (size!22467 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46006)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2513 (array!46004 array!46006 (_ BitVec 32) (_ BitVec 32) V!24907 V!24907 (_ BitVec 32) Int) ListLongMap!8769)

(assert (=> b!824509 (= lt!371887 (getCurrentListMap!2513 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824510 () Bool)

(declare-fun res!562237 () Bool)

(declare-fun e!458802 () Bool)

(assert (=> b!824510 (=> (not res!562237) (not e!458802))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46004 (_ BitVec 32)) Bool)

(assert (=> b!824510 (= res!562237 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!824511 () Bool)

(declare-fun e!458799 () Bool)

(declare-fun tp_is_empty!14929 () Bool)

(assert (=> b!824511 (= e!458799 tp_is_empty!14929)))

(declare-fun b!824512 () Bool)

(declare-fun res!562236 () Bool)

(assert (=> b!824512 (=> (not res!562236) (not e!458802))))

(declare-datatypes ((List!15784 0))(
  ( (Nil!15781) (Cons!15780 (h!16909 (_ BitVec 64)) (t!22135 List!15784)) )
))
(declare-fun arrayNoDuplicates!0 (array!46004 (_ BitVec 32) List!15784) Bool)

(assert (=> b!824512 (= res!562236 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15781))))

(declare-fun res!562238 () Bool)

(assert (=> start!71040 (=> (not res!562238) (not e!458802))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71040 (= res!562238 (validMask!0 mask!1312))))

(assert (=> start!71040 e!458802))

(assert (=> start!71040 tp_is_empty!14929))

(declare-fun array_inv!17569 (array!46004) Bool)

(assert (=> start!71040 (array_inv!17569 _keys!976)))

(assert (=> start!71040 true))

(declare-fun e!458800 () Bool)

(declare-fun array_inv!17570 (array!46006) Bool)

(assert (=> start!71040 (and (array_inv!17570 _values!788) e!458800)))

(assert (=> start!71040 tp!46410))

(declare-fun b!824513 () Bool)

(declare-fun e!458798 () Bool)

(assert (=> b!824513 (= e!458800 (and e!458798 mapRes!24013))))

(declare-fun condMapEmpty!24013 () Bool)

(declare-fun mapDefault!24013 () ValueCell!7049)

