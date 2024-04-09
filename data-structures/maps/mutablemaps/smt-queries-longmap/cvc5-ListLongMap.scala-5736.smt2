; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74258 () Bool)

(assert start!74258)

(declare-fun b!873092 () Bool)

(declare-fun e!486243 () Bool)

(declare-fun tp_is_empty!17251 () Bool)

(assert (=> b!873092 (= e!486243 tp_is_empty!17251)))

(declare-fun mapNonEmpty!27482 () Bool)

(declare-fun mapRes!27482 () Bool)

(declare-fun tp!52709 () Bool)

(declare-fun e!486240 () Bool)

(assert (=> mapNonEmpty!27482 (= mapRes!27482 (and tp!52709 e!486240))))

(declare-datatypes ((V!28049 0))(
  ( (V!28050 (val!8673 Int)) )
))
(declare-datatypes ((ValueCell!8186 0))(
  ( (ValueCellFull!8186 (v!11098 V!28049)) (EmptyCell!8186) )
))
(declare-fun mapRest!27482 () (Array (_ BitVec 32) ValueCell!8186))

(declare-fun mapValue!27482 () ValueCell!8186)

(declare-fun mapKey!27482 () (_ BitVec 32))

(declare-datatypes ((array!50620 0))(
  ( (array!50621 (arr!24335 (Array (_ BitVec 32) ValueCell!8186)) (size!24776 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50620)

(assert (=> mapNonEmpty!27482 (= (arr!24335 _values!688) (store mapRest!27482 mapKey!27482 mapValue!27482))))

(declare-fun b!873093 () Bool)

(declare-fun e!486239 () Bool)

(assert (=> b!873093 (= e!486239 (and e!486243 mapRes!27482))))

(declare-fun condMapEmpty!27482 () Bool)

(declare-fun mapDefault!27482 () ValueCell!8186)

