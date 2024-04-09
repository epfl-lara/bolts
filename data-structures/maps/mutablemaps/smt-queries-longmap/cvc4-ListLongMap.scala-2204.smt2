; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36638 () Bool)

(assert start!36638)

(declare-fun b!365399 () Bool)

(declare-fun e!223785 () Bool)

(assert (=> b!365399 (= e!223785 false)))

(declare-fun lt!169158 () Bool)

(declare-datatypes ((array!20861 0))(
  ( (array!20862 (arr!9900 (Array (_ BitVec 32) (_ BitVec 64))) (size!10252 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20861)

(declare-datatypes ((List!5552 0))(
  ( (Nil!5549) (Cons!5548 (h!6404 (_ BitVec 64)) (t!10710 List!5552)) )
))
(declare-fun arrayNoDuplicates!0 (array!20861 (_ BitVec 32) List!5552) Bool)

(assert (=> b!365399 (= lt!169158 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5549))))

(declare-fun mapNonEmpty!14250 () Bool)

(declare-fun mapRes!14250 () Bool)

(declare-fun tp!28326 () Bool)

(declare-fun e!223786 () Bool)

(assert (=> mapNonEmpty!14250 (= mapRes!14250 (and tp!28326 e!223786))))

(declare-datatypes ((V!12391 0))(
  ( (V!12392 (val!4277 Int)) )
))
(declare-datatypes ((ValueCell!3889 0))(
  ( (ValueCellFull!3889 (v!6469 V!12391)) (EmptyCell!3889) )
))
(declare-datatypes ((array!20863 0))(
  ( (array!20864 (arr!9901 (Array (_ BitVec 32) ValueCell!3889)) (size!10253 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20863)

(declare-fun mapRest!14250 () (Array (_ BitVec 32) ValueCell!3889))

(declare-fun mapKey!14250 () (_ BitVec 32))

(declare-fun mapValue!14250 () ValueCell!3889)

(assert (=> mapNonEmpty!14250 (= (arr!9901 _values!506) (store mapRest!14250 mapKey!14250 mapValue!14250))))

(declare-fun b!365400 () Bool)

(declare-fun res!204364 () Bool)

(assert (=> b!365400 (=> (not res!204364) (not e!223785))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20861 (_ BitVec 32)) Bool)

(assert (=> b!365400 (= res!204364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!365401 () Bool)

(declare-fun tp_is_empty!8465 () Bool)

(assert (=> b!365401 (= e!223786 tp_is_empty!8465)))

(declare-fun b!365402 () Bool)

(declare-fun e!223783 () Bool)

(assert (=> b!365402 (= e!223783 tp_is_empty!8465)))

(declare-fun b!365403 () Bool)

(declare-fun res!204366 () Bool)

(assert (=> b!365403 (=> (not res!204366) (not e!223785))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!365403 (= res!204366 (and (= (size!10253 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10252 _keys!658) (size!10253 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!365404 () Bool)

(declare-fun e!223782 () Bool)

(assert (=> b!365404 (= e!223782 (and e!223783 mapRes!14250))))

(declare-fun condMapEmpty!14250 () Bool)

(declare-fun mapDefault!14250 () ValueCell!3889)

