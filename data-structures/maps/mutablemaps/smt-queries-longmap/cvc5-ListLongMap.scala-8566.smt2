; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104640 () Bool)

(assert start!104640)

(declare-fun b!1247279 () Bool)

(declare-fun e!707591 () Bool)

(assert (=> b!1247279 (= e!707591 false)))

(declare-fun lt!563187 () Bool)

(declare-datatypes ((array!80343 0))(
  ( (array!80344 (arr!38736 (Array (_ BitVec 32) (_ BitVec 64))) (size!39273 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80343)

(declare-datatypes ((List!27688 0))(
  ( (Nil!27685) (Cons!27684 (h!28893 (_ BitVec 64)) (t!41164 List!27688)) )
))
(declare-fun arrayNoDuplicates!0 (array!80343 (_ BitVec 32) List!27688) Bool)

(assert (=> b!1247279 (= lt!563187 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27685))))

(declare-fun b!1247280 () Bool)

(declare-fun e!707588 () Bool)

(declare-fun tp_is_empty!31333 () Bool)

(assert (=> b!1247280 (= e!707588 tp_is_empty!31333)))

(declare-fun b!1247281 () Bool)

(declare-fun e!707592 () Bool)

(declare-fun e!707590 () Bool)

(declare-fun mapRes!48754 () Bool)

(assert (=> b!1247281 (= e!707592 (and e!707590 mapRes!48754))))

(declare-fun condMapEmpty!48754 () Bool)

(declare-datatypes ((V!47143 0))(
  ( (V!47144 (val!15729 Int)) )
))
(declare-datatypes ((ValueCell!14903 0))(
  ( (ValueCellFull!14903 (v!18425 V!47143)) (EmptyCell!14903) )
))
(declare-datatypes ((array!80345 0))(
  ( (array!80346 (arr!38737 (Array (_ BitVec 32) ValueCell!14903)) (size!39274 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80345)

(declare-fun mapDefault!48754 () ValueCell!14903)

