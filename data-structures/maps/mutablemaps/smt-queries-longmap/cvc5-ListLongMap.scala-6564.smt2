; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83296 () Bool)

(assert start!83296)

(declare-fun b_free!19261 () Bool)

(declare-fun b_next!19261 () Bool)

(assert (=> start!83296 (= b_free!19261 (not b_next!19261))))

(declare-fun tp!67062 () Bool)

(declare-fun b_and!30767 () Bool)

(assert (=> start!83296 (= tp!67062 b_and!30767)))

(declare-fun b!971569 () Bool)

(declare-fun res!650428 () Bool)

(declare-fun e!547707 () Bool)

(assert (=> b!971569 (=> (not res!650428) (not e!547707))))

(declare-datatypes ((array!60349 0))(
  ( (array!60350 (arr!29034 (Array (_ BitVec 32) (_ BitVec 64))) (size!29514 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60349)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!971569 (= res!650428 (validKeyInArray!0 (select (arr!29034 _keys!1717) i!822)))))

(declare-fun b!971570 () Bool)

(declare-fun e!547706 () Bool)

(declare-fun tp_is_empty!22159 () Bool)

(assert (=> b!971570 (= e!547706 tp_is_empty!22159)))

(declare-fun b!971571 () Bool)

(declare-fun res!650431 () Bool)

(assert (=> b!971571 (=> (not res!650431) (not e!547707))))

(declare-datatypes ((List!20262 0))(
  ( (Nil!20259) (Cons!20258 (h!21420 (_ BitVec 64)) (t!28633 List!20262)) )
))
(declare-fun arrayNoDuplicates!0 (array!60349 (_ BitVec 32) List!20262) Bool)

(assert (=> b!971571 (= res!650431 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20259))))

(declare-fun b!971572 () Bool)

(declare-fun e!547704 () Bool)

(declare-fun e!547705 () Bool)

(declare-fun mapRes!35248 () Bool)

(assert (=> b!971572 (= e!547704 (and e!547705 mapRes!35248))))

(declare-fun condMapEmpty!35248 () Bool)

(declare-datatypes ((V!34529 0))(
  ( (V!34530 (val!11130 Int)) )
))
(declare-datatypes ((ValueCell!10598 0))(
  ( (ValueCellFull!10598 (v!13689 V!34529)) (EmptyCell!10598) )
))
(declare-datatypes ((array!60351 0))(
  ( (array!60352 (arr!29035 (Array (_ BitVec 32) ValueCell!10598)) (size!29515 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60351)

(declare-fun mapDefault!35248 () ValueCell!10598)

