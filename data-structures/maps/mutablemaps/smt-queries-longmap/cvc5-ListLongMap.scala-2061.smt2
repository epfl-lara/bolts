; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35542 () Bool)

(assert start!35542)

(declare-fun b!355875 () Bool)

(declare-fun res!197495 () Bool)

(declare-fun e!218088 () Bool)

(assert (=> b!355875 (=> (not res!197495) (not e!218088))))

(declare-datatypes ((array!19517 0))(
  ( (array!19518 (arr!9249 (Array (_ BitVec 32) (_ BitVec 64))) (size!9601 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19517)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19517 (_ BitVec 32)) Bool)

(assert (=> b!355875 (= res!197495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun mapNonEmpty!13488 () Bool)

(declare-fun mapRes!13488 () Bool)

(declare-fun tp!27465 () Bool)

(declare-fun e!218087 () Bool)

(assert (=> mapNonEmpty!13488 (= mapRes!13488 (and tp!27465 e!218087))))

(declare-datatypes ((V!11627 0))(
  ( (V!11628 (val!4038 Int)) )
))
(declare-datatypes ((ValueCell!3650 0))(
  ( (ValueCellFull!3650 (v!6228 V!11627)) (EmptyCell!3650) )
))
(declare-fun mapRest!13488 () (Array (_ BitVec 32) ValueCell!3650))

(declare-fun mapValue!13488 () ValueCell!3650)

(declare-datatypes ((array!19519 0))(
  ( (array!19520 (arr!9250 (Array (_ BitVec 32) ValueCell!3650)) (size!9602 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19519)

(declare-fun mapKey!13488 () (_ BitVec 32))

(assert (=> mapNonEmpty!13488 (= (arr!9250 _values!1208) (store mapRest!13488 mapKey!13488 mapValue!13488))))

(declare-fun b!355876 () Bool)

(assert (=> b!355876 (= e!218088 false)))

(declare-fun lt!165856 () Bool)

(declare-datatypes ((List!5379 0))(
  ( (Nil!5376) (Cons!5375 (h!6231 (_ BitVec 64)) (t!10537 List!5379)) )
))
(declare-fun arrayNoDuplicates!0 (array!19517 (_ BitVec 32) List!5379) Bool)

(assert (=> b!355876 (= lt!165856 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5376))))

(declare-fun b!355877 () Bool)

(declare-fun tp_is_empty!7987 () Bool)

(assert (=> b!355877 (= e!218087 tp_is_empty!7987)))

(declare-fun b!355878 () Bool)

(declare-fun e!218089 () Bool)

(declare-fun e!218090 () Bool)

(assert (=> b!355878 (= e!218089 (and e!218090 mapRes!13488))))

(declare-fun condMapEmpty!13488 () Bool)

(declare-fun mapDefault!13488 () ValueCell!3650)

