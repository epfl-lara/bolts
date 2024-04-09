; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105542 () Bool)

(assert start!105542)

(declare-fun b_free!27143 () Bool)

(declare-fun b_next!27143 () Bool)

(assert (=> start!105542 (= b_free!27143 (not b_next!27143))))

(declare-fun tp!94947 () Bool)

(declare-fun b_and!45009 () Bool)

(assert (=> start!105542 (= tp!94947 b_and!45009)))

(declare-fun b!1256906 () Bool)

(declare-fun res!837971 () Bool)

(declare-fun e!714675 () Bool)

(assert (=> b!1256906 (=> (not res!837971) (not e!714675))))

(declare-datatypes ((array!81723 0))(
  ( (array!81724 (arr!39415 (Array (_ BitVec 32) (_ BitVec 64))) (size!39952 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81723)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81723 (_ BitVec 32)) Bool)

(assert (=> b!1256906 (= res!837971 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1256907 () Bool)

(declare-fun e!714677 () Bool)

(declare-fun tp_is_empty!32045 () Bool)

(assert (=> b!1256907 (= e!714677 tp_is_empty!32045)))

(declare-fun b!1256908 () Bool)

(declare-fun e!714676 () Bool)

(declare-fun mapRes!49855 () Bool)

(assert (=> b!1256908 (= e!714676 (and e!714677 mapRes!49855))))

(declare-fun condMapEmpty!49855 () Bool)

(declare-datatypes ((V!48091 0))(
  ( (V!48092 (val!16085 Int)) )
))
(declare-datatypes ((ValueCell!15259 0))(
  ( (ValueCellFull!15259 (v!18786 V!48091)) (EmptyCell!15259) )
))
(declare-datatypes ((array!81725 0))(
  ( (array!81726 (arr!39416 (Array (_ BitVec 32) ValueCell!15259)) (size!39953 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81725)

(declare-fun mapDefault!49855 () ValueCell!15259)

