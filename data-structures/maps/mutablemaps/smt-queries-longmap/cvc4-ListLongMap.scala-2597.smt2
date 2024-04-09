; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39412 () Bool)

(assert start!39412)

(declare-fun b_free!9671 () Bool)

(declare-fun b_next!9671 () Bool)

(assert (=> start!39412 (= b_free!9671 (not b_next!9671))))

(declare-fun tp!34541 () Bool)

(declare-fun b_and!17235 () Bool)

(assert (=> start!39412 (= tp!34541 b_and!17235)))

(declare-fun b!418887 () Bool)

(declare-fun res!244242 () Bool)

(declare-fun e!249701 () Bool)

(assert (=> b!418887 (=> (not res!244242) (not e!249701))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!418887 (= res!244242 (bvsle from!863 i!563))))

(declare-fun b!418888 () Bool)

(declare-fun res!244229 () Bool)

(declare-fun e!249703 () Bool)

(assert (=> b!418888 (=> (not res!244229) (not e!249703))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!418888 (= res!244229 (validKeyInArray!0 k!794))))

(declare-fun b!418889 () Bool)

(declare-fun res!244239 () Bool)

(assert (=> b!418889 (=> (not res!244239) (not e!249703))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!418889 (= res!244239 (validMask!0 mask!1025))))

(declare-fun b!418890 () Bool)

(declare-fun res!244240 () Bool)

(assert (=> b!418890 (=> (not res!244240) (not e!249703))))

(declare-datatypes ((array!25477 0))(
  ( (array!25478 (arr!12185 (Array (_ BitVec 32) (_ BitVec 64))) (size!12537 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25477)

(declare-fun arrayContainsKey!0 (array!25477 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!418890 (= res!244240 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-datatypes ((V!15535 0))(
  ( (V!15536 (val!5456 Int)) )
))
(declare-datatypes ((tuple2!7066 0))(
  ( (tuple2!7067 (_1!3543 (_ BitVec 64)) (_2!3543 V!15535)) )
))
(declare-datatypes ((List!7114 0))(
  ( (Nil!7111) (Cons!7110 (h!7966 tuple2!7066) (t!12458 List!7114)) )
))
(declare-datatypes ((ListLongMap!5993 0))(
  ( (ListLongMap!5994 (toList!3012 List!7114)) )
))
(declare-fun call!29188 () ListLongMap!5993)

(declare-fun call!29189 () ListLongMap!5993)

(declare-fun b!418891 () Bool)

(declare-fun e!249705 () Bool)

(declare-fun v!412 () V!15535)

(declare-fun +!1219 (ListLongMap!5993 tuple2!7066) ListLongMap!5993)

(assert (=> b!418891 (= e!249705 (= call!29188 (+!1219 call!29189 (tuple2!7067 k!794 v!412))))))

(declare-fun mapIsEmpty!17856 () Bool)

(declare-fun mapRes!17856 () Bool)

(assert (=> mapIsEmpty!17856 mapRes!17856))

(declare-fun b!418892 () Bool)

(declare-fun res!244234 () Bool)

(assert (=> b!418892 (=> (not res!244234) (not e!249701))))

(declare-fun lt!192115 () array!25477)

(declare-datatypes ((List!7115 0))(
  ( (Nil!7112) (Cons!7111 (h!7967 (_ BitVec 64)) (t!12459 List!7115)) )
))
(declare-fun arrayNoDuplicates!0 (array!25477 (_ BitVec 32) List!7115) Bool)

(assert (=> b!418892 (= res!244234 (arrayNoDuplicates!0 lt!192115 #b00000000000000000000000000000000 Nil!7112))))

(declare-fun b!418893 () Bool)

(declare-fun e!249708 () Bool)

(declare-fun tp_is_empty!10823 () Bool)

(assert (=> b!418893 (= e!249708 tp_is_empty!10823)))

(declare-fun b!418894 () Bool)

(assert (=> b!418894 (= e!249705 (= call!29189 call!29188))))

(declare-fun b!418895 () Bool)

(declare-fun e!249707 () Bool)

(declare-fun e!249704 () Bool)

(assert (=> b!418895 (= e!249707 (and e!249704 mapRes!17856))))

(declare-fun condMapEmpty!17856 () Bool)

(declare-datatypes ((ValueCell!5068 0))(
  ( (ValueCellFull!5068 (v!7699 V!15535)) (EmptyCell!5068) )
))
(declare-datatypes ((array!25479 0))(
  ( (array!25480 (arr!12186 (Array (_ BitVec 32) ValueCell!5068)) (size!12538 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25479)

(declare-fun mapDefault!17856 () ValueCell!5068)

