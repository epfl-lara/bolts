; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36002 () Bool)

(assert start!36002)

(declare-fun mapIsEmpty!14106 () Bool)

(declare-fun mapRes!14106 () Bool)

(assert (=> mapIsEmpty!14106 mapRes!14106))

(declare-fun b!361336 () Bool)

(declare-fun e!221307 () Bool)

(declare-fun tp_is_empty!8387 () Bool)

(assert (=> b!361336 (= e!221307 tp_is_empty!8387)))

(declare-fun b!361337 () Bool)

(declare-fun res!201074 () Bool)

(declare-fun e!221308 () Bool)

(assert (=> b!361337 (=> (not res!201074) (not e!221308))))

(declare-datatypes ((array!20301 0))(
  ( (array!20302 (arr!9635 (Array (_ BitVec 32) (_ BitVec 64))) (size!9987 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20301)

(declare-fun mask!1943 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20301 (_ BitVec 32)) Bool)

(assert (=> b!361337 (= res!201074 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1541 mask!1943))))

(declare-fun b!361338 () Bool)

(assert (=> b!361338 (= e!221308 false)))

(declare-fun lt!166535 () Bool)

(declare-datatypes ((List!5536 0))(
  ( (Nil!5533) (Cons!5532 (h!6388 (_ BitVec 64)) (t!10694 List!5536)) )
))
(declare-fun arrayNoDuplicates!0 (array!20301 (_ BitVec 32) List!5536) Bool)

(assert (=> b!361338 (= lt!166535 (arrayNoDuplicates!0 _keys!1541 #b00000000000000000000000000000000 Nil!5533))))

(declare-fun b!361339 () Bool)

(declare-fun e!221310 () Bool)

(assert (=> b!361339 (= e!221310 tp_is_empty!8387)))

(declare-fun mapNonEmpty!14106 () Bool)

(declare-fun tp!28182 () Bool)

(assert (=> mapNonEmpty!14106 (= mapRes!14106 (and tp!28182 e!221310))))

(declare-datatypes ((V!12159 0))(
  ( (V!12160 (val!4238 Int)) )
))
(declare-datatypes ((ValueCell!3850 0))(
  ( (ValueCellFull!3850 (v!6429 V!12159)) (EmptyCell!3850) )
))
(declare-fun mapValue!14106 () ValueCell!3850)

(declare-datatypes ((array!20303 0))(
  ( (array!20304 (arr!9636 (Array (_ BitVec 32) ValueCell!3850)) (size!9988 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20303)

(declare-fun mapKey!14106 () (_ BitVec 32))

(declare-fun mapRest!14106 () (Array (_ BitVec 32) ValueCell!3850))

(assert (=> mapNonEmpty!14106 (= (arr!9636 _values!1277) (store mapRest!14106 mapKey!14106 mapValue!14106))))

(declare-fun res!201073 () Bool)

(assert (=> start!36002 (=> (not res!201073) (not e!221308))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36002 (= res!201073 (validMask!0 mask!1943))))

(assert (=> start!36002 e!221308))

(assert (=> start!36002 true))

(declare-fun e!221306 () Bool)

(declare-fun array_inv!7088 (array!20303) Bool)

(assert (=> start!36002 (and (array_inv!7088 _values!1277) e!221306)))

(declare-fun array_inv!7089 (array!20301) Bool)

(assert (=> start!36002 (array_inv!7089 _keys!1541)))

(declare-fun b!361340 () Bool)

(assert (=> b!361340 (= e!221306 (and e!221307 mapRes!14106))))

(declare-fun condMapEmpty!14106 () Bool)

(declare-fun mapDefault!14106 () ValueCell!3850)

