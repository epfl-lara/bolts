; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40990 () Bool)

(assert start!40990)

(declare-fun b_free!10917 () Bool)

(declare-fun b_next!10917 () Bool)

(assert (=> start!40990 (= b_free!10917 (not b_next!10917))))

(declare-fun tp!38577 () Bool)

(declare-fun b_and!19077 () Bool)

(assert (=> start!40990 (= tp!38577 b_and!19077)))

(declare-fun b!456063 () Bool)

(declare-fun res!272186 () Bool)

(declare-fun e!266501 () Bool)

(assert (=> b!456063 (=> (not res!272186) (not e!266501))))

(declare-datatypes ((array!28277 0))(
  ( (array!28278 (arr!13579 (Array (_ BitVec 32) (_ BitVec 64))) (size!13931 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28277)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!456063 (= res!272186 (or (= (select (arr!13579 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13579 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!20023 () Bool)

(declare-fun mapRes!20023 () Bool)

(declare-fun tp!38578 () Bool)

(declare-fun e!266500 () Bool)

(assert (=> mapNonEmpty!20023 (= mapRes!20023 (and tp!38578 e!266500))))

(declare-datatypes ((V!17445 0))(
  ( (V!17446 (val!6172 Int)) )
))
(declare-datatypes ((ValueCell!5784 0))(
  ( (ValueCellFull!5784 (v!8434 V!17445)) (EmptyCell!5784) )
))
(declare-fun mapValue!20023 () ValueCell!5784)

(declare-fun mapRest!20023 () (Array (_ BitVec 32) ValueCell!5784))

(declare-datatypes ((array!28279 0))(
  ( (array!28280 (arr!13580 (Array (_ BitVec 32) ValueCell!5784)) (size!13932 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28279)

(declare-fun mapKey!20023 () (_ BitVec 32))

(assert (=> mapNonEmpty!20023 (= (arr!13580 _values!549) (store mapRest!20023 mapKey!20023 mapValue!20023))))

(declare-fun b!456064 () Bool)

(declare-fun res!272178 () Bool)

(declare-fun e!266504 () Bool)

(assert (=> b!456064 (=> (not res!272178) (not e!266504))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!456064 (= res!272178 (bvsle from!863 i!563))))

(declare-fun b!456065 () Bool)

(declare-fun e!266502 () Bool)

(declare-fun e!266503 () Bool)

(assert (=> b!456065 (= e!266502 (and e!266503 mapRes!20023))))

(declare-fun condMapEmpty!20023 () Bool)

(declare-fun mapDefault!20023 () ValueCell!5784)

(assert (=> b!456065 (= condMapEmpty!20023 (= (arr!13580 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5784)) mapDefault!20023)))))

(declare-fun b!456066 () Bool)

(declare-fun tp_is_empty!12255 () Bool)

(assert (=> b!456066 (= e!266503 tp_is_empty!12255)))

(declare-fun b!456067 () Bool)

(assert (=> b!456067 (= e!266504 (and (not (= from!863 i!563)) (bvslt from!863 i!563) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!13931 _keys!709)) (bvsge (bvsub (size!13931 _keys!709) (bvadd #b00000000000000000000000000000001 from!863)) (bvsub (size!13931 _keys!709) from!863))))))

(declare-fun minValue!515 () V!17445)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17445)

(declare-fun v!412 () V!17445)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!206462 () array!28277)

(declare-datatypes ((tuple2!8084 0))(
  ( (tuple2!8085 (_1!4052 (_ BitVec 64)) (_2!4052 V!17445)) )
))
(declare-datatypes ((List!8191 0))(
  ( (Nil!8188) (Cons!8187 (h!9043 tuple2!8084) (t!14027 List!8191)) )
))
(declare-datatypes ((ListLongMap!7011 0))(
  ( (ListLongMap!7012 (toList!3521 List!8191)) )
))
(declare-fun lt!206461 () ListLongMap!7011)

(declare-fun getCurrentListMapNoExtraKeys!1697 (array!28277 array!28279 (_ BitVec 32) (_ BitVec 32) V!17445 V!17445 (_ BitVec 32) Int) ListLongMap!7011)

(assert (=> b!456067 (= lt!206461 (getCurrentListMapNoExtraKeys!1697 lt!206462 (array!28280 (store (arr!13580 _values!549) i!563 (ValueCellFull!5784 v!412)) (size!13932 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206463 () ListLongMap!7011)

(assert (=> b!456067 (= lt!206463 (getCurrentListMapNoExtraKeys!1697 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!456068 () Bool)

(declare-fun res!272180 () Bool)

(assert (=> b!456068 (=> (not res!272180) (not e!266501))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!456068 (= res!272180 (validKeyInArray!0 k0!794))))

(declare-fun b!456069 () Bool)

(declare-fun res!272185 () Bool)

(assert (=> b!456069 (=> (not res!272185) (not e!266501))))

(assert (=> b!456069 (= res!272185 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13931 _keys!709))))))

(declare-fun b!456070 () Bool)

(declare-fun res!272184 () Bool)

(assert (=> b!456070 (=> (not res!272184) (not e!266501))))

(declare-datatypes ((List!8192 0))(
  ( (Nil!8189) (Cons!8188 (h!9044 (_ BitVec 64)) (t!14028 List!8192)) )
))
(declare-fun arrayNoDuplicates!0 (array!28277 (_ BitVec 32) List!8192) Bool)

(assert (=> b!456070 (= res!272184 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8189))))

(declare-fun res!272183 () Bool)

(assert (=> start!40990 (=> (not res!272183) (not e!266501))))

(assert (=> start!40990 (= res!272183 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13931 _keys!709))))))

(assert (=> start!40990 e!266501))

(assert (=> start!40990 tp_is_empty!12255))

(assert (=> start!40990 tp!38577))

(assert (=> start!40990 true))

(declare-fun array_inv!9824 (array!28279) Bool)

(assert (=> start!40990 (and (array_inv!9824 _values!549) e!266502)))

(declare-fun array_inv!9825 (array!28277) Bool)

(assert (=> start!40990 (array_inv!9825 _keys!709)))

(declare-fun b!456062 () Bool)

(declare-fun res!272175 () Bool)

(assert (=> b!456062 (=> (not res!272175) (not e!266501))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28277 (_ BitVec 32)) Bool)

(assert (=> b!456062 (= res!272175 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!456071 () Bool)

(declare-fun res!272182 () Bool)

(assert (=> b!456071 (=> (not res!272182) (not e!266501))))

(declare-fun arrayContainsKey!0 (array!28277 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!456071 (= res!272182 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!456072 () Bool)

(assert (=> b!456072 (= e!266500 tp_is_empty!12255)))

(declare-fun b!456073 () Bool)

(declare-fun res!272177 () Bool)

(assert (=> b!456073 (=> (not res!272177) (not e!266501))))

(assert (=> b!456073 (= res!272177 (and (= (size!13932 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13931 _keys!709) (size!13932 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!20023 () Bool)

(assert (=> mapIsEmpty!20023 mapRes!20023))

(declare-fun b!456074 () Bool)

(declare-fun res!272176 () Bool)

(assert (=> b!456074 (=> (not res!272176) (not e!266501))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!456074 (= res!272176 (validMask!0 mask!1025))))

(declare-fun b!456075 () Bool)

(assert (=> b!456075 (= e!266501 e!266504)))

(declare-fun res!272179 () Bool)

(assert (=> b!456075 (=> (not res!272179) (not e!266504))))

(assert (=> b!456075 (= res!272179 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206462 mask!1025))))

(assert (=> b!456075 (= lt!206462 (array!28278 (store (arr!13579 _keys!709) i!563 k0!794) (size!13931 _keys!709)))))

(declare-fun b!456076 () Bool)

(declare-fun res!272181 () Bool)

(assert (=> b!456076 (=> (not res!272181) (not e!266504))))

(assert (=> b!456076 (= res!272181 (arrayNoDuplicates!0 lt!206462 #b00000000000000000000000000000000 Nil!8189))))

(assert (= (and start!40990 res!272183) b!456074))

(assert (= (and b!456074 res!272176) b!456073))

(assert (= (and b!456073 res!272177) b!456062))

(assert (= (and b!456062 res!272175) b!456070))

(assert (= (and b!456070 res!272184) b!456069))

(assert (= (and b!456069 res!272185) b!456068))

(assert (= (and b!456068 res!272180) b!456063))

(assert (= (and b!456063 res!272186) b!456071))

(assert (= (and b!456071 res!272182) b!456075))

(assert (= (and b!456075 res!272179) b!456076))

(assert (= (and b!456076 res!272181) b!456064))

(assert (= (and b!456064 res!272178) b!456067))

(assert (= (and b!456065 condMapEmpty!20023) mapIsEmpty!20023))

(assert (= (and b!456065 (not condMapEmpty!20023)) mapNonEmpty!20023))

(get-info :version)

(assert (= (and mapNonEmpty!20023 ((_ is ValueCellFull!5784) mapValue!20023)) b!456072))

(assert (= (and b!456065 ((_ is ValueCellFull!5784) mapDefault!20023)) b!456066))

(assert (= start!40990 b!456065))

(declare-fun m!439611 () Bool)

(assert (=> start!40990 m!439611))

(declare-fun m!439613 () Bool)

(assert (=> start!40990 m!439613))

(declare-fun m!439615 () Bool)

(assert (=> b!456071 m!439615))

(declare-fun m!439617 () Bool)

(assert (=> b!456070 m!439617))

(declare-fun m!439619 () Bool)

(assert (=> b!456068 m!439619))

(declare-fun m!439621 () Bool)

(assert (=> b!456075 m!439621))

(declare-fun m!439623 () Bool)

(assert (=> b!456075 m!439623))

(declare-fun m!439625 () Bool)

(assert (=> b!456076 m!439625))

(declare-fun m!439627 () Bool)

(assert (=> b!456062 m!439627))

(declare-fun m!439629 () Bool)

(assert (=> b!456067 m!439629))

(declare-fun m!439631 () Bool)

(assert (=> b!456067 m!439631))

(declare-fun m!439633 () Bool)

(assert (=> b!456067 m!439633))

(declare-fun m!439635 () Bool)

(assert (=> b!456063 m!439635))

(declare-fun m!439637 () Bool)

(assert (=> mapNonEmpty!20023 m!439637))

(declare-fun m!439639 () Bool)

(assert (=> b!456074 m!439639))

(check-sat (not b_next!10917) b_and!19077 (not b!456068) (not b!456074) (not b!456071) (not b!456067) (not b!456070) (not mapNonEmpty!20023) (not b!456075) (not b!456062) tp_is_empty!12255 (not start!40990) (not b!456076))
(check-sat b_and!19077 (not b_next!10917))
