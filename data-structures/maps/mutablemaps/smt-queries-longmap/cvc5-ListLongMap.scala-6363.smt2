; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81942 () Bool)

(assert start!81942)

(declare-fun b_free!18409 () Bool)

(declare-fun b_next!18409 () Bool)

(assert (=> start!81942 (= b_free!18409 (not b_next!18409))))

(declare-fun tp!63928 () Bool)

(declare-fun b_and!29913 () Bool)

(assert (=> start!81942 (= tp!63928 b_and!29913)))

(declare-fun res!639832 () Bool)

(declare-fun e!538206 () Bool)

(assert (=> start!81942 (=> (not res!639832) (not e!538206))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81942 (= res!639832 (validMask!0 mask!1823))))

(assert (=> start!81942 e!538206))

(assert (=> start!81942 true))

(declare-fun tp_is_empty!20953 () Bool)

(assert (=> start!81942 tp_is_empty!20953))

(declare-datatypes ((array!58031 0))(
  ( (array!58032 (arr!27891 (Array (_ BitVec 32) (_ BitVec 64))) (size!28371 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58031)

(declare-fun array_inv!21593 (array!58031) Bool)

(assert (=> start!81942 (array_inv!21593 _keys!1441)))

(declare-datatypes ((V!32921 0))(
  ( (V!32922 (val!10527 Int)) )
))
(declare-datatypes ((ValueCell!9995 0))(
  ( (ValueCellFull!9995 (v!13082 V!32921)) (EmptyCell!9995) )
))
(declare-datatypes ((array!58033 0))(
  ( (array!58034 (arr!27892 (Array (_ BitVec 32) ValueCell!9995)) (size!28372 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58033)

(declare-fun e!538202 () Bool)

(declare-fun array_inv!21594 (array!58033) Bool)

(assert (=> start!81942 (and (array_inv!21594 _values!1197) e!538202)))

(assert (=> start!81942 tp!63928))

(declare-fun b!955287 () Bool)

(declare-fun e!538204 () Bool)

(assert (=> b!955287 (= e!538204 tp_is_empty!20953)))

(declare-fun b!955288 () Bool)

(declare-fun res!639827 () Bool)

(assert (=> b!955288 (=> (not res!639827) (not e!538206))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!955288 (= res!639827 (and (= (size!28372 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28371 _keys!1441) (size!28372 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!955289 () Bool)

(declare-fun res!639828 () Bool)

(assert (=> b!955289 (=> (not res!639828) (not e!538206))))

(declare-datatypes ((List!19580 0))(
  ( (Nil!19577) (Cons!19576 (h!20738 (_ BitVec 64)) (t!27949 List!19580)) )
))
(declare-fun arrayNoDuplicates!0 (array!58031 (_ BitVec 32) List!19580) Bool)

(assert (=> b!955289 (= res!639828 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19577))))

(declare-fun b!955290 () Bool)

(declare-fun res!639826 () Bool)

(assert (=> b!955290 (=> (not res!639826) (not e!538206))))

(declare-fun i!735 () (_ BitVec 32))

(assert (=> b!955290 (= res!639826 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28371 _keys!1441))))))

(declare-fun b!955291 () Bool)

(declare-fun mapRes!33391 () Bool)

(assert (=> b!955291 (= e!538202 (and e!538204 mapRes!33391))))

(declare-fun condMapEmpty!33391 () Bool)

(declare-fun mapDefault!33391 () ValueCell!9995)

