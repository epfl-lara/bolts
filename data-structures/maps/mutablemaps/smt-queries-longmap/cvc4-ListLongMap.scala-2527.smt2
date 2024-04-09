; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38992 () Bool)

(assert start!38992)

(declare-fun b!408185 () Bool)

(declare-fun e!245027 () Bool)

(declare-fun e!245025 () Bool)

(assert (=> b!408185 (= e!245027 e!245025)))

(declare-fun res!236229 () Bool)

(assert (=> b!408185 (=> (not res!236229) (not e!245025))))

(declare-datatypes ((array!24661 0))(
  ( (array!24662 (arr!11777 (Array (_ BitVec 32) (_ BitVec 64))) (size!12129 (_ BitVec 32))) )
))
(declare-fun lt!188751 () array!24661)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24661 (_ BitVec 32)) Bool)

(assert (=> b!408185 (= res!236229 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188751 mask!1025))))

(declare-fun _keys!709 () array!24661)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!408185 (= lt!188751 (array!24662 (store (arr!11777 _keys!709) i!563 k!794) (size!12129 _keys!709)))))

(declare-fun b!408186 () Bool)

(assert (=> b!408186 (= e!245025 false)))

(declare-fun lt!188750 () Bool)

(declare-datatypes ((List!6805 0))(
  ( (Nil!6802) (Cons!6801 (h!7657 (_ BitVec 64)) (t!11987 List!6805)) )
))
(declare-fun arrayNoDuplicates!0 (array!24661 (_ BitVec 32) List!6805) Bool)

(assert (=> b!408186 (= lt!188750 (arrayNoDuplicates!0 lt!188751 #b00000000000000000000000000000000 Nil!6802))))

(declare-fun b!408187 () Bool)

(declare-fun res!236226 () Bool)

(assert (=> b!408187 (=> (not res!236226) (not e!245027))))

(assert (=> b!408187 (= res!236226 (or (= (select (arr!11777 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11777 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!408188 () Bool)

(declare-fun res!236232 () Bool)

(assert (=> b!408188 (=> (not res!236232) (not e!245027))))

(assert (=> b!408188 (= res!236232 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12129 _keys!709))))))

(declare-fun b!408189 () Bool)

(declare-fun res!236231 () Bool)

(assert (=> b!408189 (=> (not res!236231) (not e!245027))))

(assert (=> b!408189 (= res!236231 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6802))))

(declare-fun b!408190 () Bool)

(declare-fun e!245024 () Bool)

(declare-fun tp_is_empty!10403 () Bool)

(assert (=> b!408190 (= e!245024 tp_is_empty!10403)))

(declare-fun b!408191 () Bool)

(declare-fun res!236228 () Bool)

(assert (=> b!408191 (=> (not res!236228) (not e!245027))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!408191 (= res!236228 (validMask!0 mask!1025))))

(declare-fun b!408192 () Bool)

(declare-fun res!236227 () Bool)

(assert (=> b!408192 (=> (not res!236227) (not e!245027))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!408192 (= res!236227 (validKeyInArray!0 k!794))))

(declare-fun res!236223 () Bool)

(assert (=> start!38992 (=> (not res!236223) (not e!245027))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38992 (= res!236223 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12129 _keys!709))))))

(assert (=> start!38992 e!245027))

(assert (=> start!38992 true))

(declare-datatypes ((V!14975 0))(
  ( (V!14976 (val!5246 Int)) )
))
(declare-datatypes ((ValueCell!4858 0))(
  ( (ValueCellFull!4858 (v!7489 V!14975)) (EmptyCell!4858) )
))
(declare-datatypes ((array!24663 0))(
  ( (array!24664 (arr!11778 (Array (_ BitVec 32) ValueCell!4858)) (size!12130 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24663)

(declare-fun e!245029 () Bool)

(declare-fun array_inv!8602 (array!24663) Bool)

(assert (=> start!38992 (and (array_inv!8602 _values!549) e!245029)))

(declare-fun array_inv!8603 (array!24661) Bool)

(assert (=> start!38992 (array_inv!8603 _keys!709)))

(declare-fun b!408193 () Bool)

(declare-fun mapRes!17226 () Bool)

(assert (=> b!408193 (= e!245029 (and e!245024 mapRes!17226))))

(declare-fun condMapEmpty!17226 () Bool)

(declare-fun mapDefault!17226 () ValueCell!4858)

