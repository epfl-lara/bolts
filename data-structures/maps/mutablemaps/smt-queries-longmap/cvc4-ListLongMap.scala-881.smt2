; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20398 () Bool)

(assert start!20398)

(declare-fun b_free!5045 () Bool)

(declare-fun b_next!5045 () Bool)

(assert (=> start!20398 (= b_free!5045 (not b_next!5045))))

(declare-fun tp!18167 () Bool)

(declare-fun b_and!11809 () Bool)

(assert (=> start!20398 (= tp!18167 b_and!11809)))

(declare-fun b!201394 () Bool)

(declare-fun res!96253 () Bool)

(declare-fun e!132003 () Bool)

(assert (=> b!201394 (=> (not res!96253) (not e!132003))))

(declare-datatypes ((array!9030 0))(
  ( (array!9031 (arr!4265 (Array (_ BitVec 32) (_ BitVec 64))) (size!4590 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9030)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6181 0))(
  ( (V!6182 (val!2495 Int)) )
))
(declare-datatypes ((ValueCell!2107 0))(
  ( (ValueCellFull!2107 (v!4461 V!6181)) (EmptyCell!2107) )
))
(declare-datatypes ((array!9032 0))(
  ( (array!9033 (arr!4266 (Array (_ BitVec 32) ValueCell!2107)) (size!4591 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9032)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!201394 (= res!96253 (and (= (size!4591 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4590 _keys!825) (size!4591 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!96250 () Bool)

(assert (=> start!20398 (=> (not res!96250) (not e!132003))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20398 (= res!96250 (validMask!0 mask!1149))))

(assert (=> start!20398 e!132003))

(declare-fun e!132001 () Bool)

(declare-fun array_inv!2803 (array!9032) Bool)

(assert (=> start!20398 (and (array_inv!2803 _values!649) e!132001)))

(assert (=> start!20398 true))

(declare-fun tp_is_empty!4901 () Bool)

(assert (=> start!20398 tp_is_empty!4901))

(declare-fun array_inv!2804 (array!9030) Bool)

(assert (=> start!20398 (array_inv!2804 _keys!825)))

(assert (=> start!20398 tp!18167))

(declare-fun b!201395 () Bool)

(declare-fun e!132005 () Bool)

(declare-fun mapRes!8420 () Bool)

(assert (=> b!201395 (= e!132001 (and e!132005 mapRes!8420))))

(declare-fun condMapEmpty!8420 () Bool)

(declare-fun mapDefault!8420 () ValueCell!2107)

