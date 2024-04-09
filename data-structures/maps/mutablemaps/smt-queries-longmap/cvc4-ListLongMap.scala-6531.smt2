; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83102 () Bool)

(assert start!83102)

(declare-fun b!968960 () Bool)

(declare-fun e!546250 () Bool)

(assert (=> b!968960 (= e!546250 false)))

(declare-fun lt!431542 () Bool)

(declare-datatypes ((array!59979 0))(
  ( (array!59980 (arr!28849 (Array (_ BitVec 32) (_ BitVec 64))) (size!29329 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!59979)

(declare-datatypes ((List!20134 0))(
  ( (Nil!20131) (Cons!20130 (h!21292 (_ BitVec 64)) (t!28505 List!20134)) )
))
(declare-fun arrayNoDuplicates!0 (array!59979 (_ BitVec 32) List!20134) Bool)

(assert (=> b!968960 (= lt!431542 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20131))))

(declare-fun mapNonEmpty!34957 () Bool)

(declare-fun mapRes!34957 () Bool)

(declare-fun tp!66526 () Bool)

(declare-fun e!546248 () Bool)

(assert (=> mapNonEmpty!34957 (= mapRes!34957 (and tp!66526 e!546248))))

(declare-datatypes ((V!34269 0))(
  ( (V!34270 (val!11033 Int)) )
))
(declare-datatypes ((ValueCell!10501 0))(
  ( (ValueCellFull!10501 (v!13592 V!34269)) (EmptyCell!10501) )
))
(declare-datatypes ((array!59981 0))(
  ( (array!59982 (arr!28850 (Array (_ BitVec 32) ValueCell!10501)) (size!29330 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59981)

(declare-fun mapValue!34957 () ValueCell!10501)

(declare-fun mapKey!34957 () (_ BitVec 32))

(declare-fun mapRest!34957 () (Array (_ BitVec 32) ValueCell!10501))

(assert (=> mapNonEmpty!34957 (= (arr!28850 _values!1425) (store mapRest!34957 mapKey!34957 mapValue!34957))))

(declare-fun b!968961 () Bool)

(declare-fun res!648689 () Bool)

(assert (=> b!968961 (=> (not res!648689) (not e!546250))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!968961 (= res!648689 (and (= (size!29330 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29329 _keys!1717) (size!29330 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!968962 () Bool)

(declare-fun tp_is_empty!21965 () Bool)

(assert (=> b!968962 (= e!546248 tp_is_empty!21965)))

(declare-fun b!968963 () Bool)

(declare-fun e!546249 () Bool)

(assert (=> b!968963 (= e!546249 tp_is_empty!21965)))

(declare-fun b!968964 () Bool)

(declare-fun res!648691 () Bool)

(assert (=> b!968964 (=> (not res!648691) (not e!546250))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59979 (_ BitVec 32)) Bool)

(assert (=> b!968964 (= res!648691 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun res!648690 () Bool)

(assert (=> start!83102 (=> (not res!648690) (not e!546250))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83102 (= res!648690 (validMask!0 mask!2147))))

(assert (=> start!83102 e!546250))

(assert (=> start!83102 true))

(declare-fun e!546251 () Bool)

(declare-fun array_inv!22229 (array!59981) Bool)

(assert (=> start!83102 (and (array_inv!22229 _values!1425) e!546251)))

(declare-fun array_inv!22230 (array!59979) Bool)

(assert (=> start!83102 (array_inv!22230 _keys!1717)))

(declare-fun mapIsEmpty!34957 () Bool)

(assert (=> mapIsEmpty!34957 mapRes!34957))

(declare-fun b!968965 () Bool)

(assert (=> b!968965 (= e!546251 (and e!546249 mapRes!34957))))

(declare-fun condMapEmpty!34957 () Bool)

(declare-fun mapDefault!34957 () ValueCell!10501)

