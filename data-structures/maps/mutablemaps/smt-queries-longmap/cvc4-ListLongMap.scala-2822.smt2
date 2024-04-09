; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40908 () Bool)

(assert start!40908)

(declare-fun b_free!10835 () Bool)

(declare-fun b_next!10835 () Bool)

(assert (=> start!40908 (= b_free!10835 (not b_next!10835))))

(declare-fun tp!38331 () Bool)

(declare-fun b_and!18995 () Bool)

(assert (=> start!40908 (= tp!38331 b_and!18995)))

(declare-fun mapIsEmpty!19900 () Bool)

(declare-fun mapRes!19900 () Bool)

(assert (=> mapIsEmpty!19900 mapRes!19900))

(declare-fun b!454217 () Bool)

(declare-fun res!270701 () Bool)

(declare-fun e!265763 () Bool)

(assert (=> b!454217 (=> (not res!270701) (not e!265763))))

(declare-datatypes ((array!28115 0))(
  ( (array!28116 (arr!13498 (Array (_ BitVec 32) (_ BitVec 64))) (size!13850 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28115)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!454217 (= res!270701 (or (= (select (arr!13498 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13498 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!270705 () Bool)

(assert (=> start!40908 (=> (not res!270705) (not e!265763))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40908 (= res!270705 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13850 _keys!709))))))

(assert (=> start!40908 e!265763))

(declare-fun tp_is_empty!12173 () Bool)

(assert (=> start!40908 tp_is_empty!12173))

(assert (=> start!40908 tp!38331))

(assert (=> start!40908 true))

(declare-datatypes ((V!17335 0))(
  ( (V!17336 (val!6131 Int)) )
))
(declare-datatypes ((ValueCell!5743 0))(
  ( (ValueCellFull!5743 (v!8393 V!17335)) (EmptyCell!5743) )
))
(declare-datatypes ((array!28117 0))(
  ( (array!28118 (arr!13499 (Array (_ BitVec 32) ValueCell!5743)) (size!13851 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28117)

(declare-fun e!265761 () Bool)

(declare-fun array_inv!9770 (array!28117) Bool)

(assert (=> start!40908 (and (array_inv!9770 _values!549) e!265761)))

(declare-fun array_inv!9771 (array!28115) Bool)

(assert (=> start!40908 (array_inv!9771 _keys!709)))

(declare-fun b!454218 () Bool)

(declare-fun res!270704 () Bool)

(assert (=> b!454218 (=> (not res!270704) (not e!265763))))

(assert (=> b!454218 (= res!270704 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13850 _keys!709))))))

(declare-fun b!454219 () Bool)

(declare-fun res!270702 () Bool)

(assert (=> b!454219 (=> (not res!270702) (not e!265763))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!454219 (= res!270702 (validMask!0 mask!1025))))

(declare-fun b!454220 () Bool)

(declare-fun e!265765 () Bool)

(assert (=> b!454220 (= e!265765 tp_is_empty!12173)))

(declare-fun b!454221 () Bool)

(declare-fun res!270709 () Bool)

(assert (=> b!454221 (=> (not res!270709) (not e!265763))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28115 (_ BitVec 32)) Bool)

(assert (=> b!454221 (= res!270709 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!454222 () Bool)

(declare-fun e!265764 () Bool)

(assert (=> b!454222 (= e!265763 e!265764)))

(declare-fun res!270706 () Bool)

(assert (=> b!454222 (=> (not res!270706) (not e!265764))))

(declare-fun lt!206094 () array!28115)

(assert (=> b!454222 (= res!270706 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206094 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!454222 (= lt!206094 (array!28116 (store (arr!13498 _keys!709) i!563 k!794) (size!13850 _keys!709)))))

(declare-fun b!454223 () Bool)

(declare-fun res!270708 () Bool)

(assert (=> b!454223 (=> (not res!270708) (not e!265764))))

(declare-datatypes ((List!8129 0))(
  ( (Nil!8126) (Cons!8125 (h!8981 (_ BitVec 64)) (t!13965 List!8129)) )
))
(declare-fun arrayNoDuplicates!0 (array!28115 (_ BitVec 32) List!8129) Bool)

(assert (=> b!454223 (= res!270708 (arrayNoDuplicates!0 lt!206094 #b00000000000000000000000000000000 Nil!8126))))

(declare-fun b!454224 () Bool)

(declare-fun res!270700 () Bool)

(assert (=> b!454224 (=> (not res!270700) (not e!265764))))

(assert (=> b!454224 (= res!270700 (bvsle from!863 i!563))))

(declare-fun b!454225 () Bool)

(assert (=> b!454225 (= e!265761 (and e!265765 mapRes!19900))))

(declare-fun condMapEmpty!19900 () Bool)

(declare-fun mapDefault!19900 () ValueCell!5743)

