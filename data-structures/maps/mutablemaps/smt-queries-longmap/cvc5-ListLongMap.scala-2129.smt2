; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36020 () Bool)

(assert start!36020)

(declare-fun b!361458 () Bool)

(declare-fun res!201142 () Bool)

(declare-fun e!221397 () Bool)

(assert (=> b!361458 (=> (not res!201142) (not e!221397))))

(declare-datatypes ((array!20317 0))(
  ( (array!20318 (arr!9642 (Array (_ BitVec 32) (_ BitVec 64))) (size!9994 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20317)

(declare-datatypes ((List!5538 0))(
  ( (Nil!5535) (Cons!5534 (h!6390 (_ BitVec 64)) (t!10696 List!5538)) )
))
(declare-fun arrayNoDuplicates!0 (array!20317 (_ BitVec 32) List!5538) Bool)

(assert (=> b!361458 (= res!201142 (arrayNoDuplicates!0 _keys!1541 #b00000000000000000000000000000000 Nil!5535))))

(declare-fun b!361459 () Bool)

(declare-fun res!201138 () Bool)

(assert (=> b!361459 (=> (not res!201138) (not e!221397))))

(declare-fun k!1134 () (_ BitVec 64))

(declare-fun from!1924 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!20317 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!361459 (= res!201138 (arrayContainsKey!0 _keys!1541 k!1134 from!1924))))

(declare-fun b!361461 () Bool)

(declare-fun e!221396 () Bool)

(declare-fun tp_is_empty!8395 () Bool)

(assert (=> b!361461 (= e!221396 tp_is_empty!8395)))

(declare-fun b!361462 () Bool)

(assert (=> b!361462 (= e!221397 (and (not (= (select (arr!9642 _keys!1541) from!1924) k!1134)) (bvslt (bvadd #b00000000000000000000000000000001 from!1924) #b00000000000000000000000000000000)))))

(declare-fun b!361463 () Bool)

(declare-fun e!221394 () Bool)

(assert (=> b!361463 (= e!221394 tp_is_empty!8395)))

(declare-fun b!361464 () Bool)

(declare-fun res!201139 () Bool)

(assert (=> b!361464 (=> (not res!201139) (not e!221397))))

(declare-fun mask!1943 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20317 (_ BitVec 32)) Bool)

(assert (=> b!361464 (= res!201139 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1541 mask!1943))))

(declare-fun mapIsEmpty!14121 () Bool)

(declare-fun mapRes!14121 () Bool)

(assert (=> mapIsEmpty!14121 mapRes!14121))

(declare-fun b!361465 () Bool)

(declare-fun res!201141 () Bool)

(assert (=> b!361465 (=> (not res!201141) (not e!221397))))

(declare-fun extraKeys!1198 () (_ BitVec 32))

(declare-datatypes ((V!12171 0))(
  ( (V!12172 (val!4242 Int)) )
))
(declare-datatypes ((ValueCell!3854 0))(
  ( (ValueCellFull!3854 (v!6433 V!12171)) (EmptyCell!3854) )
))
(declare-datatypes ((array!20319 0))(
  ( (array!20320 (arr!9643 (Array (_ BitVec 32) ValueCell!3854)) (size!9995 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20319)

(assert (=> b!361465 (= res!201141 (and (= (size!9995 _values!1277) (bvadd #b00000000000000000000000000000001 mask!1943)) (= (size!9994 _keys!1541) (size!9995 _values!1277)) (bvsge mask!1943 #b00000000000000000000000000000000) (bvsge extraKeys!1198 #b00000000000000000000000000000000) (bvsle extraKeys!1198 #b00000000000000000000000000000011)))))

(declare-fun res!201143 () Bool)

(assert (=> start!36020 (=> (not res!201143) (not e!221397))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36020 (= res!201143 (validMask!0 mask!1943))))

(assert (=> start!36020 e!221397))

(assert (=> start!36020 true))

(declare-fun array_inv!7092 (array!20317) Bool)

(assert (=> start!36020 (array_inv!7092 _keys!1541)))

(declare-fun e!221395 () Bool)

(declare-fun array_inv!7093 (array!20319) Bool)

(assert (=> start!36020 (and (array_inv!7093 _values!1277) e!221395)))

(declare-fun b!361460 () Bool)

(declare-fun res!201140 () Bool)

(assert (=> b!361460 (=> (not res!201140) (not e!221397))))

(assert (=> b!361460 (= res!201140 (and (bvsge from!1924 #b00000000000000000000000000000000) (bvslt from!1924 (size!9994 _keys!1541))))))

(declare-fun mapNonEmpty!14121 () Bool)

(declare-fun tp!28197 () Bool)

(assert (=> mapNonEmpty!14121 (= mapRes!14121 (and tp!28197 e!221396))))

(declare-fun mapKey!14121 () (_ BitVec 32))

(declare-fun mapValue!14121 () ValueCell!3854)

(declare-fun mapRest!14121 () (Array (_ BitVec 32) ValueCell!3854))

(assert (=> mapNonEmpty!14121 (= (arr!9643 _values!1277) (store mapRest!14121 mapKey!14121 mapValue!14121))))

(declare-fun b!361466 () Bool)

(assert (=> b!361466 (= e!221395 (and e!221394 mapRes!14121))))

(declare-fun condMapEmpty!14121 () Bool)

(declare-fun mapDefault!14121 () ValueCell!3854)

