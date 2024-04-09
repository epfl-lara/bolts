; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36024 () Bool)

(assert start!36024)

(declare-fun mapIsEmpty!14127 () Bool)

(declare-fun mapRes!14127 () Bool)

(assert (=> mapIsEmpty!14127 mapRes!14127))

(declare-fun mapNonEmpty!14127 () Bool)

(declare-fun tp!28203 () Bool)

(declare-fun e!221425 () Bool)

(assert (=> mapNonEmpty!14127 (= mapRes!14127 (and tp!28203 e!221425))))

(declare-datatypes ((V!12175 0))(
  ( (V!12176 (val!4244 Int)) )
))
(declare-datatypes ((ValueCell!3856 0))(
  ( (ValueCellFull!3856 (v!6435 V!12175)) (EmptyCell!3856) )
))
(declare-fun mapRest!14127 () (Array (_ BitVec 32) ValueCell!3856))

(declare-fun mapKey!14127 () (_ BitVec 32))

(declare-datatypes ((array!20325 0))(
  ( (array!20326 (arr!9646 (Array (_ BitVec 32) ValueCell!3856)) (size!9998 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20325)

(declare-fun mapValue!14127 () ValueCell!3856)

(assert (=> mapNonEmpty!14127 (= (arr!9646 _values!1277) (store mapRest!14127 mapKey!14127 mapValue!14127))))

(declare-fun from!1924 () (_ BitVec 32))

(declare-datatypes ((array!20327 0))(
  ( (array!20328 (arr!9647 (Array (_ BitVec 32) (_ BitVec 64))) (size!9999 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20327)

(declare-fun e!221423 () Bool)

(declare-fun b!361512 () Bool)

(declare-fun k!1134 () (_ BitVec 64))

(assert (=> b!361512 (= e!221423 (and (not (= (select (arr!9647 _keys!1541) from!1924) k!1134)) (bvslt (bvadd #b00000000000000000000000000000001 from!1924) #b00000000000000000000000000000000)))))

(declare-fun b!361513 () Bool)

(declare-fun res!201178 () Bool)

(assert (=> b!361513 (=> (not res!201178) (not e!221423))))

(assert (=> b!361513 (= res!201178 (and (bvsge from!1924 #b00000000000000000000000000000000) (bvslt from!1924 (size!9999 _keys!1541))))))

(declare-fun b!361514 () Bool)

(declare-fun e!221427 () Bool)

(declare-fun tp_is_empty!8399 () Bool)

(assert (=> b!361514 (= e!221427 tp_is_empty!8399)))

(declare-fun b!361516 () Bool)

(declare-fun res!201174 () Bool)

(assert (=> b!361516 (=> (not res!201174) (not e!221423))))

(declare-fun extraKeys!1198 () (_ BitVec 32))

(declare-fun mask!1943 () (_ BitVec 32))

(assert (=> b!361516 (= res!201174 (and (= (size!9998 _values!1277) (bvadd #b00000000000000000000000000000001 mask!1943)) (= (size!9999 _keys!1541) (size!9998 _values!1277)) (bvsge mask!1943 #b00000000000000000000000000000000) (bvsge extraKeys!1198 #b00000000000000000000000000000000) (bvsle extraKeys!1198 #b00000000000000000000000000000011)))))

(declare-fun b!361517 () Bool)

(declare-fun res!201179 () Bool)

(assert (=> b!361517 (=> (not res!201179) (not e!221423))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20327 (_ BitVec 32)) Bool)

(assert (=> b!361517 (= res!201179 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1541 mask!1943))))

(declare-fun b!361518 () Bool)

(declare-fun res!201176 () Bool)

(assert (=> b!361518 (=> (not res!201176) (not e!221423))))

(declare-datatypes ((List!5540 0))(
  ( (Nil!5537) (Cons!5536 (h!6392 (_ BitVec 64)) (t!10698 List!5540)) )
))
(declare-fun arrayNoDuplicates!0 (array!20327 (_ BitVec 32) List!5540) Bool)

(assert (=> b!361518 (= res!201176 (arrayNoDuplicates!0 _keys!1541 #b00000000000000000000000000000000 Nil!5537))))

(declare-fun b!361515 () Bool)

(declare-fun e!221426 () Bool)

(assert (=> b!361515 (= e!221426 (and e!221427 mapRes!14127))))

(declare-fun condMapEmpty!14127 () Bool)

(declare-fun mapDefault!14127 () ValueCell!3856)

