; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41346 () Bool)

(assert start!41346)

(declare-fun b!461989 () Bool)

(declare-fun res!276392 () Bool)

(declare-fun e!269526 () Bool)

(assert (=> b!461989 (=> (not res!276392) (not e!269526))))

(declare-datatypes ((array!28701 0))(
  ( (array!28702 (arr!13782 (Array (_ BitVec 32) (_ BitVec 64))) (size!14134 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28701)

(assert (=> b!461989 (= res!276392 (and (bvsle #b00000000000000000000000000000000 (size!14134 _keys!1025)) (bvslt (size!14134 _keys!1025) #b01111111111111111111111111111111)))))

(declare-fun mapNonEmpty!20368 () Bool)

(declare-fun mapRes!20368 () Bool)

(declare-fun tp!39187 () Bool)

(declare-fun e!269530 () Bool)

(assert (=> mapNonEmpty!20368 (= mapRes!20368 (and tp!39187 e!269530))))

(declare-datatypes ((V!17727 0))(
  ( (V!17728 (val!6278 Int)) )
))
(declare-datatypes ((ValueCell!5890 0))(
  ( (ValueCellFull!5890 (v!8560 V!17727)) (EmptyCell!5890) )
))
(declare-datatypes ((array!28703 0))(
  ( (array!28704 (arr!13783 (Array (_ BitVec 32) ValueCell!5890)) (size!14135 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28703)

(declare-fun mapKey!20368 () (_ BitVec 32))

(declare-fun mapValue!20368 () ValueCell!5890)

(declare-fun mapRest!20368 () (Array (_ BitVec 32) ValueCell!5890))

(assert (=> mapNonEmpty!20368 (= (arr!13783 _values!833) (store mapRest!20368 mapKey!20368 mapValue!20368))))

(declare-fun b!461990 () Bool)

(declare-fun e!269531 () Bool)

(declare-fun e!269527 () Bool)

(assert (=> b!461990 (= e!269531 (and e!269527 mapRes!20368))))

(declare-fun condMapEmpty!20368 () Bool)

(declare-fun mapDefault!20368 () ValueCell!5890)

