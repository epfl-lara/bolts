; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36576 () Bool)

(assert start!36576)

(declare-fun mapNonEmpty!14202 () Bool)

(declare-fun mapRes!14202 () Bool)

(declare-fun tp!28278 () Bool)

(declare-fun e!223513 () Bool)

(assert (=> mapNonEmpty!14202 (= mapRes!14202 (and tp!28278 e!223513))))

(declare-datatypes ((V!12359 0))(
  ( (V!12360 (val!4265 Int)) )
))
(declare-datatypes ((ValueCell!3877 0))(
  ( (ValueCellFull!3877 (v!6456 V!12359)) (EmptyCell!3877) )
))
(declare-datatypes ((array!20809 0))(
  ( (array!20810 (arr!9878 (Array (_ BitVec 32) ValueCell!3877)) (size!10230 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20809)

(declare-fun mapRest!14202 () (Array (_ BitVec 32) ValueCell!3877))

(declare-fun mapKey!14202 () (_ BitVec 32))

(declare-fun mapValue!14202 () ValueCell!3877)

(assert (=> mapNonEmpty!14202 (= (arr!9878 _values!506) (store mapRest!14202 mapKey!14202 mapValue!14202))))

(declare-fun b!365047 () Bool)

(declare-fun e!223516 () Bool)

(declare-fun tp_is_empty!8441 () Bool)

(assert (=> b!365047 (= e!223516 tp_is_empty!8441)))

(declare-fun b!365049 () Bool)

(assert (=> b!365049 (= e!223513 tp_is_empty!8441)))

(declare-fun b!365050 () Bool)

(declare-fun res!204178 () Bool)

(declare-fun e!223515 () Bool)

(assert (=> b!365050 (=> (not res!204178) (not e!223515))))

(declare-datatypes ((array!20811 0))(
  ( (array!20812 (arr!9879 (Array (_ BitVec 32) (_ BitVec 64))) (size!10231 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20811)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20811 (_ BitVec 32)) Bool)

(assert (=> b!365050 (= res!204178 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!365051 () Bool)

(declare-fun res!204176 () Bool)

(assert (=> b!365051 (=> (not res!204176) (not e!223515))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!365051 (= res!204176 (and (= (size!10230 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10231 _keys!658) (size!10230 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!14202 () Bool)

(assert (=> mapIsEmpty!14202 mapRes!14202))

(declare-fun b!365052 () Bool)

(declare-fun e!223514 () Bool)

(assert (=> b!365052 (= e!223514 (and e!223516 mapRes!14202))))

(declare-fun condMapEmpty!14202 () Bool)

(declare-fun mapDefault!14202 () ValueCell!3877)

