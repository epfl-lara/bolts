; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36072 () Bool)

(assert start!36072)

(declare-datatypes ((array!20373 0))(
  ( (array!20374 (arr!9668 (Array (_ BitVec 32) (_ BitVec 64))) (size!10020 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20373)

(declare-fun e!221672 () Bool)

(declare-fun k!1134 () (_ BitVec 64))

(declare-fun from!1924 () (_ BitVec 32))

(declare-fun b!361899 () Bool)

(declare-fun arrayContainsKey!0 (array!20373 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!361899 (= e!221672 (not (arrayContainsKey!0 _keys!1541 k!1134 (bvadd #b00000000000000000000000000000001 from!1924))))))

(declare-fun b!361900 () Bool)

(declare-fun e!221673 () Bool)

(declare-fun tp_is_empty!8423 () Bool)

(assert (=> b!361900 (= e!221673 tp_is_empty!8423)))

(declare-fun b!361901 () Bool)

(declare-fun res!201419 () Bool)

(assert (=> b!361901 (=> (not res!201419) (not e!221672))))

(declare-fun mask!1943 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20373 (_ BitVec 32)) Bool)

(assert (=> b!361901 (= res!201419 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1541 mask!1943))))

(declare-fun mapNonEmpty!14169 () Bool)

(declare-fun mapRes!14169 () Bool)

(declare-fun tp!28245 () Bool)

(assert (=> mapNonEmpty!14169 (= mapRes!14169 (and tp!28245 e!221673))))

(declare-datatypes ((V!12207 0))(
  ( (V!12208 (val!4256 Int)) )
))
(declare-datatypes ((ValueCell!3868 0))(
  ( (ValueCellFull!3868 (v!6447 V!12207)) (EmptyCell!3868) )
))
(declare-fun mapRest!14169 () (Array (_ BitVec 32) ValueCell!3868))

(declare-datatypes ((array!20375 0))(
  ( (array!20376 (arr!9669 (Array (_ BitVec 32) ValueCell!3868)) (size!10021 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20375)

(declare-fun mapKey!14169 () (_ BitVec 32))

(declare-fun mapValue!14169 () ValueCell!3868)

(assert (=> mapNonEmpty!14169 (= (arr!9669 _values!1277) (store mapRest!14169 mapKey!14169 mapValue!14169))))

(declare-fun b!361902 () Bool)

(declare-fun e!221669 () Bool)

(declare-fun e!221671 () Bool)

(assert (=> b!361902 (= e!221669 (and e!221671 mapRes!14169))))

(declare-fun condMapEmpty!14169 () Bool)

(declare-fun mapDefault!14169 () ValueCell!3868)

