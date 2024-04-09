; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105454 () Bool)

(assert start!105454)

(declare-fun b_free!27077 () Bool)

(declare-fun b_next!27077 () Bool)

(assert (=> start!105454 (= b_free!27077 (not b_next!27077))))

(declare-fun tp!94745 () Bool)

(declare-fun b_and!44933 () Bool)

(assert (=> start!105454 (= tp!94745 b_and!44933)))

(declare-fun b!1255858 () Bool)

(declare-fun e!713881 () Bool)

(declare-fun tp_is_empty!31979 () Bool)

(assert (=> b!1255858 (= e!713881 tp_is_empty!31979)))

(declare-fun b!1255859 () Bool)

(declare-fun res!837317 () Bool)

(declare-fun e!713884 () Bool)

(assert (=> b!1255859 (=> (not res!837317) (not e!713884))))

(declare-datatypes ((array!81591 0))(
  ( (array!81592 (arr!39350 (Array (_ BitVec 32) (_ BitVec 64))) (size!39887 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81591)

(declare-datatypes ((List!28117 0))(
  ( (Nil!28114) (Cons!28113 (h!29322 (_ BitVec 64)) (t!41611 List!28117)) )
))
(declare-fun arrayNoDuplicates!0 (array!81591 (_ BitVec 32) List!28117) Bool)

(assert (=> b!1255859 (= res!837317 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28114))))

(declare-fun mapIsEmpty!49753 () Bool)

(declare-fun mapRes!49753 () Bool)

(assert (=> mapIsEmpty!49753 mapRes!49753))

(declare-fun b!1255860 () Bool)

(declare-fun e!713879 () Bool)

(assert (=> b!1255860 (= e!713879 tp_is_empty!31979)))

(declare-fun b!1255861 () Bool)

(declare-fun res!837316 () Bool)

(assert (=> b!1255861 (=> (not res!837316) (not e!713884))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81591 (_ BitVec 32)) Bool)

(assert (=> b!1255861 (= res!837316 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1255862 () Bool)

(declare-fun e!713882 () Bool)

(assert (=> b!1255862 (= e!713882 (and e!713881 mapRes!49753))))

(declare-fun condMapEmpty!49753 () Bool)

(declare-datatypes ((V!48003 0))(
  ( (V!48004 (val!16052 Int)) )
))
(declare-datatypes ((ValueCell!15226 0))(
  ( (ValueCellFull!15226 (v!18752 V!48003)) (EmptyCell!15226) )
))
(declare-datatypes ((array!81593 0))(
  ( (array!81594 (arr!39351 (Array (_ BitVec 32) ValueCell!15226)) (size!39888 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81593)

(declare-fun mapDefault!49753 () ValueCell!15226)

