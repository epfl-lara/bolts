; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20850 () Bool)

(assert start!20850)

(declare-fun b_free!5491 () Bool)

(declare-fun b_next!5491 () Bool)

(assert (=> start!20850 (= b_free!5491 (not b_next!5491))))

(declare-fun tp!19513 () Bool)

(declare-fun b_and!12255 () Bool)

(assert (=> start!20850 (= tp!19513 b_and!12255)))

(declare-fun b!208986 () Bool)

(declare-fun res!101807 () Bool)

(declare-fun e!136223 () Bool)

(assert (=> b!208986 (=> (not res!101807) (not e!136223))))

(declare-datatypes ((array!9906 0))(
  ( (array!9907 (arr!4703 (Array (_ BitVec 32) (_ BitVec 64))) (size!5028 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9906)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6785 0))(
  ( (V!6786 (val!2721 Int)) )
))
(declare-datatypes ((ValueCell!2333 0))(
  ( (ValueCellFull!2333 (v!4687 V!6785)) (EmptyCell!2333) )
))
(declare-datatypes ((array!9908 0))(
  ( (array!9909 (arr!4704 (Array (_ BitVec 32) ValueCell!2333)) (size!5029 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9908)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!208986 (= res!101807 (and (= (size!5029 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5028 _keys!825) (size!5029 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!9098 () Bool)

(declare-fun mapRes!9098 () Bool)

(assert (=> mapIsEmpty!9098 mapRes!9098))

(declare-fun b!208987 () Bool)

(declare-fun e!136225 () Bool)

(declare-fun tp_is_empty!5353 () Bool)

(assert (=> b!208987 (= e!136225 tp_is_empty!5353)))

(declare-fun b!208988 () Bool)

(declare-fun res!101803 () Bool)

(assert (=> b!208988 (=> (not res!101803) (not e!136223))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!208988 (= res!101803 (= (select (arr!4703 _keys!825) i!601) k!843))))

(declare-fun mapNonEmpty!9098 () Bool)

(declare-fun tp!19514 () Bool)

(assert (=> mapNonEmpty!9098 (= mapRes!9098 (and tp!19514 e!136225))))

(declare-fun mapValue!9098 () ValueCell!2333)

(declare-fun mapRest!9098 () (Array (_ BitVec 32) ValueCell!2333))

(declare-fun mapKey!9098 () (_ BitVec 32))

(assert (=> mapNonEmpty!9098 (= (arr!4704 _values!649) (store mapRest!9098 mapKey!9098 mapValue!9098))))

(declare-fun b!208989 () Bool)

(declare-fun res!101808 () Bool)

(assert (=> b!208989 (=> (not res!101808) (not e!136223))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9906 (_ BitVec 32)) Bool)

(assert (=> b!208989 (= res!101808 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!208991 () Bool)

(declare-fun e!136222 () Bool)

(assert (=> b!208991 (= e!136222 tp_is_empty!5353)))

(declare-fun b!208992 () Bool)

(declare-fun e!136221 () Bool)

(assert (=> b!208992 (= e!136221 (and e!136222 mapRes!9098))))

(declare-fun condMapEmpty!9098 () Bool)

(declare-fun mapDefault!9098 () ValueCell!2333)

