; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20820 () Bool)

(assert start!20820)

(declare-fun b_free!5461 () Bool)

(declare-fun b_next!5461 () Bool)

(assert (=> start!20820 (= b_free!5461 (not b_next!5461))))

(declare-fun tp!19424 () Bool)

(declare-fun b_and!12225 () Bool)

(assert (=> start!20820 (= tp!19424 b_and!12225)))

(declare-fun b!208536 () Bool)

(declare-fun res!101494 () Bool)

(declare-fun e!136000 () Bool)

(assert (=> b!208536 (=> (not res!101494) (not e!136000))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9848 0))(
  ( (array!9849 (arr!4674 (Array (_ BitVec 32) (_ BitVec 64))) (size!4999 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9848)

(assert (=> b!208536 (= res!101494 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4999 _keys!825))))))

(declare-fun b!208537 () Bool)

(declare-fun e!135998 () Bool)

(declare-fun tp_is_empty!5323 () Bool)

(assert (=> b!208537 (= e!135998 tp_is_empty!5323)))

(declare-fun b!208538 () Bool)

(declare-fun res!101489 () Bool)

(assert (=> b!208538 (=> (not res!101489) (not e!136000))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((V!6745 0))(
  ( (V!6746 (val!2706 Int)) )
))
(declare-datatypes ((ValueCell!2318 0))(
  ( (ValueCellFull!2318 (v!4672 V!6745)) (EmptyCell!2318) )
))
(declare-datatypes ((array!9850 0))(
  ( (array!9851 (arr!4675 (Array (_ BitVec 32) ValueCell!2318)) (size!5000 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9850)

(assert (=> b!208538 (= res!101489 (and (= (size!5000 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4999 _keys!825) (size!5000 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!9053 () Bool)

(declare-fun mapRes!9053 () Bool)

(declare-fun tp!19423 () Bool)

(declare-fun e!135999 () Bool)

(assert (=> mapNonEmpty!9053 (= mapRes!9053 (and tp!19423 e!135999))))

(declare-fun mapRest!9053 () (Array (_ BitVec 32) ValueCell!2318))

(declare-fun mapKey!9053 () (_ BitVec 32))

(declare-fun mapValue!9053 () ValueCell!2318)

(assert (=> mapNonEmpty!9053 (= (arr!4675 _values!649) (store mapRest!9053 mapKey!9053 mapValue!9053))))

(declare-fun res!101491 () Bool)

(assert (=> start!20820 (=> (not res!101491) (not e!136000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20820 (= res!101491 (validMask!0 mask!1149))))

(assert (=> start!20820 e!136000))

(declare-fun e!135996 () Bool)

(declare-fun array_inv!3091 (array!9850) Bool)

(assert (=> start!20820 (and (array_inv!3091 _values!649) e!135996)))

(assert (=> start!20820 true))

(assert (=> start!20820 tp_is_empty!5323))

(declare-fun array_inv!3092 (array!9848) Bool)

(assert (=> start!20820 (array_inv!3092 _keys!825)))

(assert (=> start!20820 tp!19424))

(declare-fun b!208539 () Bool)

(assert (=> b!208539 (= e!135996 (and e!135998 mapRes!9053))))

(declare-fun condMapEmpty!9053 () Bool)

(declare-fun mapDefault!9053 () ValueCell!2318)

